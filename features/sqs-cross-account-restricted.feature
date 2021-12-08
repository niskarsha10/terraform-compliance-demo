Feature: SQS should not have cross account access
	Scenario: SQS should not have cross account access
		Given I have aws_sqs_queue defined
		Then it must not have cross-account access
