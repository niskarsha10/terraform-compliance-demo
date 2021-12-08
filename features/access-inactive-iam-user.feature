Feature: Access for inactive IAM users should be disabled
	Scenario: Access for inactive IAM users should be disabled
		Given I have aws_iam_user defined
		When it has user
		Then it must have user
		Then it must not have inactive user
