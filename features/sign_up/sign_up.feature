Feature: Sign up form 
  As a a new cumtomer
  I want to be able to create a new account
  So that I buy stuff

  @complete
  Scenario: Sign up form is displayed
  	When I navigate to the sign up page
  	Then the sign up form is displayed

  @incomplete  
  Scenario: Sign up fields and button are displayed
  	When I navigate to the sign up page
  	Then the email address field is displayed on the sign up page
  	And the password field is displayed on the sign up page
  	And the postcode field is displayed on the sign up page
  	And the sign up button is displayed on the sign up page

  @incomplete
  Scenario: Special offers text and box are displayed
  	When I navigate to the sign up page
  	Then the special offers text is displyed
  	And the special offers is selected

  @incomplete  
  Scenario: Already have account details are displayed
   	When I navigate to the sign up page
   	Then the already have an account details are displayed

  @complete	
  Scenario: Successful sign up
  	Given I navigate to the sign up page
  	When I enter valid sign up details
  	Then the home page is displayed
  	And login is no longer displayed in the header
    And "Account" to be displayed in the header

  Scenario: Sign up with very long email address
  Scenario: Sign up with 6 charters  password
  Scenario: Sign up with password with special charters 
  Scenario: Sign up with invalid email address
  Scenario: Sign up with empty email address
  Scenario: Sign up with duplicate email address
  Scenario: Sign up with 5 charters password
  Scenario: Sign up with empty password
  Scenario: Sign up with invalid postcode
  Scenario: Sign up with empty postcode
  Scenario: Sign up with non uk postcode





