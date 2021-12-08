Feature: Security Groups should not have unrestricted VNC Server access
	Scenario: Security Groups should not have unrestricted VNC Server access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
    		Then it must not have tcp protocol and port 5900 for 0.0.0.0/0
