@sign_in_out
Feature: Sign out
	In order to avoid others from using my account
	As a user
	I need to sign out

	Scenario: while being signed in
	    Given the user is still signed in with email "bob@bobbo.com" and password "orange"
	    When the user clicks the button "Sign out"
	    Then the user should see "Good bye!"
	    And the page should not display "Welcome, bobbo"