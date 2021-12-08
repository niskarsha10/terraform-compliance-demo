Feature: Security Groups should not have unrestricted MySQL access
	Scenario: Security Groups should not have unrestricted MySQL access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
		Then it must not have tcp protocol and port 3306 for 0.0.0.0/0
		Then it must not have udp protocol and port 3306 for 0.0.0.0/0 
