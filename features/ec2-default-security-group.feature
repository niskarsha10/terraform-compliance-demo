Feature: EC2 instance should not use default security group
	Scenario: EC2 instance should not use default security group
		Given I have resource aws_instance defined
		Then it must not contain default security_groups
