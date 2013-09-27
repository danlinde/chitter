Feature: adding peeps
	In order to see what is happening
	As a user
	I want to see peeps

	Scenario: When there are no peeps
		Given I am on the homepage
		When I fill in "message" with "this is my first peep!"
		And I press "Peep"
		Then I should see "this is my first peep!"

