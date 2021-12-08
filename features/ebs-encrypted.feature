Feature: EBS encrypted compliance  # /target/src/features/tagging.feature
    Scenario: Ensure EBS is encrypted
        Given I have EBS defined
        Then it must contain encryption
	And its value must not be unencrypted
