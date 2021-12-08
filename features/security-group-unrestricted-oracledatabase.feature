Feature: Security Groups should not have unrestricted Oracle Database access
	Scenario: Security Groups should not have unrestricted Oracle Database access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
    		Then it must not have tcp protocol and port 1521 for 0.0.0.0/0
