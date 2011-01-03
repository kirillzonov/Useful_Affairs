Feature:
  Like a registerred user
  I can create my own category
  I can delete my own category
  And I can list my own and public categories

Background:
 Given I am on register page
 And I fill in "user_login" with "graff"
 And I fill in "user_email" with "myemail@example.com"
 And I fill in "user_password" with "mypassword"
 And I fill in "user_password_confirmation" with "mypassword"
 And press "Sign up"

Scenario:
 Given I am on affair's creating page
