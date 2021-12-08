Feature: AWS account should not have unused IAM users
	Scenario: AWS account should not have unused IAM users
		Given I have aws_iam_user defined
		When it has user
		Then it must not have unused user
