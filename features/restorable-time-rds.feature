Feature: Last restorable time should be configured for RDS
	Scenario: Last restorable time should be configured for RDS
		Given I have aws_db_instance defined
		Then it must have restorable enabled
