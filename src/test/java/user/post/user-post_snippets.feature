@ignore
Feature: Reusable scenarios for post a user

  @Create
  Scenario:
    Given url "https://reqres.in/api/users/"
    And request  { "name": "swiftDeveloper", "job": "Fullstack Developer" }
    When method post
    Then status 201
    And def contactId = $.id

#  Scenario: Post a user from localhost API
#    Given url "http://localhost:8080" + "/api/v1/" + "student"
#    And request { "name": "SDET Yair Tobar", "email": "TheProSDET@gmail.com", "dob": "1996-03-12" }
#    When method post
#    Then status 200