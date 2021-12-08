Feature: Medium Severity CVE
	Scenario: Medium Severity CVE
		Given I have aws_inspector_assessment_target defined
		When it has Medium-Severity CVE
		Then it must have Medium-Severity CVE
