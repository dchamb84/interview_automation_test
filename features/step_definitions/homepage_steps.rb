Then(/^the home page is displayed$/) do
	expect(@farmdrop.homepage).to be_displayed 
end

Then(/^login is no longer displayed in the header$/) do
	expect(@farmdrop.homepage.login_signup_or_account_name.text).to_not include "Sign Up"
	expect(@farmdrop.homepage.login_signup_or_account_name.text).to_not include "Login"
end

Then(/^"([^"]*)" to be displayed in the header$/) do |account_name|
  expect(@farmdrop.homepage.login_signup_or_account_name.text).to include account_name
end