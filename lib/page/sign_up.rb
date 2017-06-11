class SignUp < SitePrism::Page
set_url "/signup"

element :signup_form, '.session__container'
element :email_address, '#email'
element :password, '#password'
element :postcode, '#zipcode'
element :submit, '#email-signup-form-submit'
end