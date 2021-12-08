Feature: IAM instance roles should be used to provision access to AWS resources
	Scenario: IAM instance roles should be used to provision access to AWS resources
		Given I have AWS IAM roles defined
		Then it must contain role
