Given(/^I navigate to the sign up page$/) do
	@farmdrop = App.new
	@farmdrop.sign_up.load
end

Then(/^the sign up form is displayed$/) do
  expect(@farmdrop.sign_up).to have_signup_form
end