Feature: EBS volumes should always be attached to EC2 instances
	Scenario: EBS volumes should always be attached to EC2 instances
		Given I have aws_volume_attachment defined
		Then it must have instance_id
