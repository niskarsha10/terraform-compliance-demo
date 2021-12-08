Feature: IAM access keys should be rotated periodically
	Scenario: IAM access keys should be rotated periodically
		Given I have aws_iam_access_key defined
		Then it must have access-key rotation
