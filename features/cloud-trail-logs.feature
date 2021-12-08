Feature: CloudTrail logs should be encrypted with CMKs
	Scenario: CloudTrail logs should be encrypted with CMKs
		Given I have aws_cloudtrail defined
		Then CMK encryption must be enabled
