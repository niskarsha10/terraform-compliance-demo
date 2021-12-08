Feature: Unused access keys should be disabled
	Scenario: Unused access keys should be disabled
		Given I have aws_iam_access_key defined
		When it has access-key
		Then it must have access-key
		And it must not have unused access-key

