class App
	def sign_up
		@sign_up ||= SignUp.new
	end

	def homepage
		@homepage ||= Homepage.new
	end
end