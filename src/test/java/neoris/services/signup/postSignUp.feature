Feature: Validate services Signup

  Background:
    * url baseUrl

  @test-1
  Scenario: Create new user
    Given path 'signup'
    And headers {Content-Type: 'application/json'}
    And request {"username": "davidzaraza", "password": "davidzaraza"}
    When method post
    Then status 200
    And print response

  @test-2
  Scenario: Retry to create new user that already exists
    Given path 'signup'
    And headers {Content-Type: 'application/json'}
    And request {"username": "davidzaraza", "password": "davidzaraza"}
    When method post
    Then status 200
    And print response
    And match response.errorMessage == 'This user already exist.'
