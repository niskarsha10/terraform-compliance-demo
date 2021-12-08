Feature: S3 buckets should not be unencrypted
	Scenario: S3 buckets should not be unencrypted
		Given I have AWS S3 Bucket defined
		Then encryption at rest must be enabled
