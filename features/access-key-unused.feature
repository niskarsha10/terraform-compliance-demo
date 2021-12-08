Feature: Access keys should not be unused
	Scenario: Access keys should not be unused
		Given I have aws_iam_access_key defined
		When it has access key
		Then it must have access key
		Then it must not have unused
