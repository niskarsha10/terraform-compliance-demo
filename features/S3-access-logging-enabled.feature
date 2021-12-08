Feature: This is base for check basic of s3
Scenario: S3 resources should have access logging enabled
		Given I have AWS S3 Bucket defined
		When it has logging
		Then it must have logging
		And logging must be enabled
