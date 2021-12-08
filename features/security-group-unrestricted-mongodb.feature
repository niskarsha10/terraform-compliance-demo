Feature: Security Groups should not have unrestricted MongoDB access
	Scenario: Security Groups should not have unrestricted MongoDB access
		Given I have AWS Security Group defined
    		When it has ingress
    		Then it must have ingress
    		Then it must not have tcp protocol and port 27017 for 0.0.0.0/0
