Given(/^the user is still signed in with email "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  sign_in(arg1, arg2)
end

When(/^the user clicks the button "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^the user should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^the page should not display "(.*?)"$/) do |arg1|
  expect(page).not_to have_content(arg1)
end