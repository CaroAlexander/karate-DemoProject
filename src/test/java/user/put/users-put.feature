Feature: Put user

  Scenario: Put a user on reqres
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request  { "name": "javaDeveloper", "job": "Developer" }
    When method put
    Then status 200
    And match $.name == 'javaDeveloper'

  Scenario: Get a user from localhost API
    Given url "http://localhost:8080" + "/api/v1/" + "student/" + "1"
    And param name = 'Alexander'
    When method put
    Then status 200