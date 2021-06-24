Feature: HungerStation - POC for API Testing

  Background:
    Given I send and accept JSON

  @SEVERITY:trivial
  Scenario: Verify service is returning user information for registered user
    When I add Headers:
      | Authorization | Bearer GaVoCNGgB46zFsTY8km0iA76q83giggxEjoqUDHnBrI |
    And I send a GET request to "https://hs-staging.com/api/v2/users/me"
    Then the response status should be "200"
    Then the JSON response should follow "features/schemas/user.json"
    Then the JSON response should have "id" of type numeric and value "188940"
    Then the JSON response should have "name" of type string and value "Ahmad test"

  @SEVERITY:normal
  Scenario: Verify service is returning menu for the provided branch
    When I send a GET request to "https://hs-staging.com/api/v2/menus" with:
      | branch_id |
      | 2759      |
    Then the JSON response root should be object
    Then the response status should be "200"

  Scenario: verify test
    When I send a GET request to ".*" with:
     |
    And