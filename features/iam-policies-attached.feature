Feature: IAM policies should be attached to groups and roles only
	Scenario: IAM policies should be attached to groups and roles only
		Given I have aws_iam_role_policy defined
		Then it must have group
		And it must have policy
