pipeline {
  agent any
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform-init') {
      steps {
        withAWS(credentials: 'niskarsha-secret', region: 'us-west-2') {
          sh '''
           terraform init
           terraform validate
	   terraform plan -out main.tfplan
	   terraform show -json main.tfplan > main.tfplan.json

         '''
         }
      }
    }
    stage('TF complaince') {
           agent {
               docker {
                   image "eerkunt/terraform-compliance"
                   args '-i --entrypoint='
                 }
           }
           steps {
	     sh '''
               docker run --rm -v $PWD:/target -it eerkunt/terraform-compliance -f features -p main.tfplan.json

             '''
	   }
    }
    stage('tfsec') {
      agent {
        docker {
          image 'tfsec/tfsec-ci'
          reuseNode true
        }
      }
      steps {
        sh '''
          tfsec . --no-color
        '''
      }
    }

    stage('terraform-apply-and-destroy') {
      steps {
        withAWS(credentials: 'niskarsha-secret', region: 'us-west-2') {
          sh '''
	   terraform apply -auto-approve -no-color
         '''
         }
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
