Feature: Low Severity CVE
	Scenario: Low Severity CVE
		Given I have aws_inspector_assessment_target defined
		When it has Low-Severity CVE
		Then it must have Low-Severity CVE
