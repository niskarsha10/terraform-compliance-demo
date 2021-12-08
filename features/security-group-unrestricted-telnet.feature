Feature: Security Groups should not have unrestricted Telnet access
	Scenario: Security Groups should not have unrestricted Telnet access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
    		Then it must not have tcp protocol and port 23 for 0.0.0.0/0
