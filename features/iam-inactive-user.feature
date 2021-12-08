Feature: Access for inactive IAM users should be disabled
	Scenario: Access for inactive IAM users should be disabled
		Given I have aws_iam_access_key defined
		Given I have aws_iam_user defined
		Then it must not have inactive aws_iam_user

