class SesionesController < ApplicationController
	respond_to :html, :xml, :json

	def new
		if current_user
			redirect_to menu_path #CONECTAR A MENU
		end
	end

	def create
		mail = params[:sesion][:mail]
		mail = mail.downcase
		usuario = Usuario.find_by_mail(mail)
		if usuario && usuario.authenticate(params[:sesion][:password]) && usuario.activo
			sign_in usuario
			redirect_to menu_path
		else
			flash[:error] = "Combinacion contrasena/usuario incorrecta"
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to signin_path
	end

	def menu
		
	end

end