Feature: CloudTrail trails should be integrated with CloudWatch logs
	Scenario: CloudTrail trails should be integrated with CloudWatch logs
		Given I have aws_cloudwatch_log_group defined
		Then it must have cloudtrail trail
