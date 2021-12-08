Feature: Default access keys should not be unused
	Scenario: Default access keys should not be unused
		Given I have aws_iam_access_key defined
		When it has default access-key
		Then it must not have default access-key
