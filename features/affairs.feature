Feature: Creating new affair
  Like a registered user

Background:
 Given I am on register page
 And I fill in "user_login" with "graff"
 And I fill in "user_email" with "myemail@example.com"
 And I fill in "user_password" with "mypassword"
 And I fill in "user_password_confirmation" with "mypassword"
 And press "Sign up"

Scenario:
 Given I am on affair's creating page
 When I fill in "affair_shortname" with "new_affair"
 And I fill in "affair_description" with "Description for new affair"
 Then affair with shortname for "affair_shortname" must be exist
