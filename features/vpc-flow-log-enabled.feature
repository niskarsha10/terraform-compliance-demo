Feature: VPC flow logging should be enabled for all VPCs
	Scenario: VPC flow logging should be enabled for all VPCs
		Given I have aws_flow_log defined
		When it has vpc_id
		Then it must have vpc_id
