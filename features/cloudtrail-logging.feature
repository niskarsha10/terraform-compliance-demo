Feature: CloudTrail logging should be enabled for the account
	Scenario: CloudTrail logging should be enabled for the account
		Given I have aws_cloudtrail defined
		Then logging must be enabled
