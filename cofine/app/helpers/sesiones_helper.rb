module SesionesHelper

	# - - - SIGN IN HELPERS - - - #

	def sign_in(usuario)
		cookies.permanent[:remember_token] = usuario.remember_token
		self.current_user = usuario
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(usuario)
		@current_user = usuario
	end

	def current_user
		@current_user ||= Usuario.find_by_remember_token(cookies[:remember_token])
	end

	# - - - SIGN OUT HELPERS - - - #

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end

end
