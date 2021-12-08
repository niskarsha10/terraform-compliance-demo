Feature: MFA should be enabled for all IAM users that have a console password
	Scenario: MFA should be enabled for all IAM users that have a console password
		Given I have aws_iam_user defined
		Then it mfa must be enabled
