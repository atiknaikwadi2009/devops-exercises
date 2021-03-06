Feature: Provision and install Nagios server

  Background:
    Given I have a running server nagiosserver
    And I provision it nagiosserver

  Scenario: Install Apache
    When I install Apache
    Then it should be successful
    And apache2 should be running on nagiosserver
    And it should be accepting connections on port 80

  Scenario: Install MySQL
    When I install MySQL
    Then it should be successful
    And mysql should be running on nagiosserver

  Scenario: Install PHP
    When I install PHP
    Then it should be successful

  Scenario: Create Nagios user and group
    When I create user and group
    Then it should be successful
    And user should exist

  Scenario: Install build dependencies
    When I install build dependencies
    Then it should be successful

  Scenario: Install Nagios Core
    When I install Nagios core
    Then it should be successful

  Scenario: Add wwwdata user to nagios group
    When I add wwwdata user to nagios group
    Then it should be successful

  Scenario: Install Nagios plugins
    When I install Nagios plugins
    Then it should be successful

  Scenario: Install NRPE
    When I install NRPE
    Then it should be successful
    And xinetd startup script should be updated
    And xinetd should be running on nagiosserver

  Scenario: Edit Nagios configuration
    When I edit Nagios configuration
    Then it should be successful
    And a server configuration directory should exist

  Scenario: Configure Nagios Contacts
    When I configure nagios contacts
    Then it should be successful

  Scenario: Configure check_nrpe Command
    When I configure check_nrpe command
    Then it should be successful

  Scenario: Configure apache
    When I configure apache
    Then it should be successful
    And nagios should be running on nagiosserver
    And apache2 should be running on nagiosserver

  Scenario: Add Host to Nagios Configuration
    When I add host to nagios configuration
    Then it should be successful
    And nagios should be running on nagiosserver
