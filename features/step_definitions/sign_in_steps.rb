Then(/^the user should not see the message "(.*?)"$/) do |message|
	expect(page).not_to have_content(message)
end

Then(/^the user signs in with the email "(.*?)" and the password "(.*?)"$/) do |email, password|
  sign_in(email, password)
end

Then(/^the user will see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end
