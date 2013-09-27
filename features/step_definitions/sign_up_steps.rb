Then(/^I should see a confirmation message$/) do
  expect(page).to have_content("Welcome")
end

Then(/^I should see an error message$/) do
  expect(page).to have_content("already taken")
end
