Feature: CloudFront Distribution should use HTTPS protocol
	Scenario: CloudFront Distribution should use HTTPS protocol
		Given I have aws_cloudfront_distribution defined
		When it has viewer_protocol_policy
		Then it must have viewer_protocol_policy
		And it must have protocol 445
