Feature: SNS should not support cross account access
	Scenario: SNS should not support cross account access
		Given I have aws_sns_topic defined
		When it has cross account access
		Then it must not contain cross-account access
