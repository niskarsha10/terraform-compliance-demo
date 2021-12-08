Feature: Security Group Outbound Access compliance  # /target/src/features/tagging.feature
    Scenario: Ensure Security Group should not have unrestricted outbound access
        Given I have AWS Security Group defined
	When it has egress
	Then it must have egress
	And it must not have tcp protocol and port 1024-65535 for 0.0.0.0/0
	And it must not have udp protocol and port 1024-65535 for 0.0.0.0/0
