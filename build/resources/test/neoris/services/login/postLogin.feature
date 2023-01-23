Feature: Validate services Login

  Background:
    * url baseUrl

  @test-1
  Scenario: Login with user already exist
    Given path 'login'
    And headers {Content-Type: 'application/json'}
    And request {"username": "davizara", "password": "davidzara"}
    When method post
    Then status 200
    And print response

  @test-2
  Scenario: Error login user with wrong data username
    Given path 'login'
    And headers {Content-Type: 'application/json'}
    And request {"username": "davizaraza", "password": "davidzara"}
    When method post
    Then status 200
    And print response
    And match response.errorMessage == 'User does not exist.'


  @test-3
  Scenario: Error login user with wrong data password
    Given path 'login'
    And headers {Content-Type: 'application/json'}
    And request {"username": "davizara", "password": "davidzaraza"}
    When method post
    Then status 200
    And print response
    And match response.errorMessage == 'Wrong password.'