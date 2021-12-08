Feature: IAM users should not have multi-mode access
	Scenario: IAM users should not have multi-mode access
		Given I have aws_iam_user defined
		Then it must have multi_access_mode enabled
