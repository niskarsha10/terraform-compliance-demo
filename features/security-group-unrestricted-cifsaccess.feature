Feature: Security Groups should not have unrestricted CIFS access
	Scenario: Security Groups should not have unrestricted CIFS access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
		Then it must not have tcp protocol and port 139, 445 for 0.0.0.0/0
		Then it must not have udp protocol and port 137, 138 for 0.0.0.0/0
