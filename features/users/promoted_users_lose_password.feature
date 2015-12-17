@javascript
Feature: Promoted users must use strong passwords
  A newly promoted activist will need to enter a new password upon promotion

  Background:
    Given I exist as a user
      And I am not logged in

  Scenario: A user is promoted to activist thus needs to supply a strong password
    When I am made into an activist
    And I log in
    Then I am prompted to input a strong password page
    And I visit action pages
    Then I am prompted to input a strong password page
    When I submit a strong password
    And I visit action pages
    Then I am shown the site as it normally would be displayed
