Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request {"name": "#(name)", "job":"#(job)"}

    # * def var = {"name": "juan", "job": "pilot"}

  Scenario Outline: Post a user
    When method post
    Then status 201
    Examples:
      | name          | job                 |
      | javaDeveloper | Back Developer      |
      | swifDeveloper | FullStack Developer |
      | AWS-Developer | AWS Architect       |

#  Scenario: Post a user
#    * def var = {"name": "juan", "job": "pilot"}
#    Given request  var
#    When method post
#    Then status 201
#
#  Scenario: Post a user
#    Given request  { "name": "javaDeveloper", "job": "Developer" }
#    When method post
#    Then status 201
#
#  Scenario: Post a user without job
#    Given request  { "name": "javaDeveloper"}
#    When method post
#    Then status 201
#
#  Scenario: Post a user with name invalid
#    Given request  { "name": "*'¿'", "job": "Developer" }
#    When method post
#    Then status 201