Feature: Rotation for customer created CMKs should be enabled
	Scenario: Rotation for customer created CMKs should be enabled
		Given I have aws_kms_key defined
		Then it must have customer_master_key_spec enabled
