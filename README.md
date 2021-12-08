## Terraform-compliance

All the feature files should be inside feature directory



## cmd

```
terraform init
```

```
terraform validate
```

```
terraform plan -out main.tfplan
```

```
terraform show -json main.tfplan > main.tfplan.json
```

```
docker pull eerkunt/terraform-compliance
```

```
docker run --rm -v $PWD:/target -it eerkunt/terraform-compliance -f features -p main.tfplan.json
```
