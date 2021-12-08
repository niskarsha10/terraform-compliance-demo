Feature: Security Group should never remain unused compliance  # /target/src/features/tagging.feature
    Scenario: Ensure Security Group is not unused
        Given I have AWS Security Group defined
        Then its value must not be unused
