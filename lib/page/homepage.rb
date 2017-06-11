class Homepage < SitePrism::Page
	set_url '/london'

	element :login_signup_or_account_name, '[data-qaid=account-name]'
end