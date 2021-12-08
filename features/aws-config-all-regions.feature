Feature: AWS Config should be enabled in all regions
	Scenario: AWS Config should be enabled in all regions
		Given I have aws_config_config_rule defined
		Then it must have region enabled
