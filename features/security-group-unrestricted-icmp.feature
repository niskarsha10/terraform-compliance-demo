Feature: Security Groups should not have unrestricted ICMP access
	Scenario: Security Groups should not have unrestricted ICMP access
		Given I have AWS Security Group defined
		When it has ingress
		Then it must have ingress
		And it must not have icmp protocol and port -1 for 0.0.0.0/0
