@sign_in_out
Feature: Sign in
	In order to peep
	As a user
	I need to sign in

	Scenario: has not signed in
		Given I am on the homepage
		Then I should not see "Welcome, bobbo"

	Scenario: sign in with correct credentials
		Given the user signs in with the email "bob@bobbo.com" and the password "orange"
		Then I should see "Welcome, bobbo"

	Scenario: with incorrect credentials
	    Given the user signs in with the email "bob@bobbo.com" and the password "wrong"
	    Then the user should not see the message "Welcome, bobbo"
	    And the user will see "The email or password are incorrect"
