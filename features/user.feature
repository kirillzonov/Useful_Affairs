Feature: Create an User
  As an unlogged user
  I want to register

Scenario:
 Given I am on register page
 When I fill in "user_login" with "graff"
 And I fill in "user_email" with "myemail@example.com"
 And I fill in "user_password" with "mypassword"
 And I fill in "user_password_confirmation" with "mypassword"
 And press "Sign up"
 Then user "graff" must exist
