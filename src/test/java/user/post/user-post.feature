Feature: Post user

  Scenario: Post a user on reqres
    Given url "https://reqres.in" + "/api/users/"
    And request  { "name": "javaDeveloper", "job": "Developer" }
    When method post
    Then status 201

  Scenario: Post a user from localhost API
    Given url "http://localhost:8080" + "/api/v1/" + "student"
    And request { "name": "SDET Yair Tobar", "email": "TheProSDET@gmail.com", "dob": "1996-03-12" }
    When method post
    Then status 200