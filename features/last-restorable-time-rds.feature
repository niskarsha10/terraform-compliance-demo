Feature: Last restorable time should be configured for RDS
	Scenario: Last restorable time should be configured for RDS
		Given I have aws_rds_cluster defined
		When it has restore_to_point_in_time
		Then it must not have restore_to_point_in_time
