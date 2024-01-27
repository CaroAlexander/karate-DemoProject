Feature: Get user on reqres

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200

  Scenario: Get a user from localhost API
    Given url "http://localhost:8081" + "/api/v1/" + "student"
    When method get
    Then status 200