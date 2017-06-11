Feature: Social Media 

  @incomplete
  Scenario: Social media text and facebook button are displayed
  	When I navigate to the sign up page
  	Then the "You can sign up with social media" text is displayed
  	And the facebook button is displyed on the sign up page

  @incomplete  
  Scenario: Sign up with facebook
  	When I navigate to the sign up page
  	And I choose to sign up using facebook
  	And I enter my facebook details
  	Then the home page is displayed
  	And login is no longer displayed in the header

  @incomplete
  Scenario: unsuccessful sign up with facebook
    When I navigate to the sign up page
  	And I choose to sign up using facebook
  	And I close the facebook window
  	Then "Failed to sign in with Facebook" error is displyed on the sign up page
