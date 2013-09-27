Feature: Sign up
	In order to peep
	As a user
	I want to sign up
 
	Scenario: Sign up with valid data
		Given I am on the sign up page
		When I fill in the following:
			| name                  | John Doe            |
			| username              | johndoe             |
			| email                 | johndoe@example.com |
			| password              | orange              |
		And I press "Sign up"
		Then I should see a confirmation message

	Scenario: Sign up with duplicate email
		Given I am on the sign up page
		When I fill in the following:
			| name                  | John Doe            |
			| username              | jaydoe              |
			| email                 | jaydoe@example.com  |
			| password              | orange              |
		And I press "Sign up"
		And I am on the sign up page
		And I fill in the following:
			| name                  | James Doe            |
			| username              | jamesdoe             |
			| email                 | jaydoe@example.com   |
			| password              | orange               |
		And I press "Sign up"
		Then I should see an error message

	Scenario: Sign up with duplicate username
		Given I am on the sign up page
		When I fill in the following:
			| name                  | John Doe            |
			| username              | jaydoe              |
			| email                 | johndoe@example.com |
			| password              | orange              |
		And I press "Sign up"
		And I am on the sign up page
		And I fill in the following:
			| name                  | James Doe            |
			| username              | jaydoe               |
			| email                 | jamesdoe@example.com |
			| password              | orange               |
		And I press "Sign up"
		Then I should see an error message