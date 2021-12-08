Feature: S3 buckets should not be unencrypted
	Scenario: S3 buckets should not be unencrypted
		Given I have aws_s3_bucket defined
		Then it must contain server_side_encryption_configuration
