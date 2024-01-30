Feature: Delete user

  Scenario: Delete a user on reqres
    * call read("../post/user-post_snippets.feature@Create")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204

#  Scenario: Delete a user from localhost API
#    Given url "http://localhost:8080" + "/api/v1/" + "student/" + "3"
#    When method delete
#    Then status 200