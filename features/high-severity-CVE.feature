Feature: High-Severity CVEs
	Scenario: High-Severity CVEs
		Given I have aws_inspector_assessment_target defined
		When it has High-Severity CVE
		Then it must have High-Severity CVE
