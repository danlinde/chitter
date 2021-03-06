@sign_in_out
Feature: viewing and adding peeps
	In order to see what is happening
	As a user
	I want to see peeps

	Scenario: When there are no peeps
		Given I am on the homepage
		Then I should see "Current peeps:"

	Scenario: When I am logged in, I can add a peep
		Given the user signs in with the email "bob@bobbo.com" and the password "orange"
		When I am on the homepage
		And I fill in "message" with "this is my peep"
		And I press "Peep"
		Then I should see "this is my peep"
		Then I should see "bobbo"

		





