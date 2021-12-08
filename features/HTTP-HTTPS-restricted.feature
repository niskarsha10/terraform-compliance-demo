Feature: Non HTTP/HTTPS ports should not have unrestricted access
	Scenario: Non HTTP/HTTPS ports should not have unrestricted access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
    		Then it must not have tcp protocol and port 80,443 for 0.0.0.0/0
