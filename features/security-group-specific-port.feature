Feature: EC2 security group should have specific ports configured
	Scenario Outline: EC2 security group should have specific ports configured
		Given I have AWS Security Group defined
		When it has ingress
		Then it must have ingress
		Then it must only have <proto> protocol and port <portNumber> for 0.0.0.0/0


  Examples:
    | ProtocolName | proto | portNumber |
    | HTTP         | tcp   | 443       |
    | Telnet       | tcp   | 23         |
    | SSH          | tcp   | 22         |
    | MySQL        | tcp   | 3306       |
    | MSSQL        | tcp   | 1443       |
    | NetBIOS      | tcp   | 139        |
    | RDP          | tcp   | 3389       |
    | Jenkins Slave| tcp   | 50000      |
