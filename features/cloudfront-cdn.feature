Feature: AWS CloudFront CDN should be used
	Scenario: AWS CloudFront CDN should be used
		Given I have aws_cloudfront_distribution defined
		Then it must not have cdn
