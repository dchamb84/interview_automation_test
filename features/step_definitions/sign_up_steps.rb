Given(/^I navigate to the sign up page$/) do
	@farmdrop = App.new
	@farmdrop.sign_up.load
end

Then(/^the sign up form is displayed$/) do
  expect(@farmdrop.sign_up).to have_signup_form
end

When(/^I enter valid sign up details$/) do
  @farmdrop.sign_up.email_address.set Faker::Internet.email
  @farmdrop.sign_up.password.set Faker::Internet.password
  @farmdrop.sign_up.postcode.set 'EC4M 7DX'
  @farmdrop.sign_up.submit.click
end