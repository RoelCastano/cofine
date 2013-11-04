class UsuariosController < ApplicationController

	def index
		@usuarios = Usuario.all
	end

	def new
		@usuario = Usuario.new
	end

	def create
	    usuario = Usuario.create(params[:usuario])
	    usuario.nombre = usuario.nombre.downcase
	    usuario.apellido_paterno = usuario.apellido_paterno.downcase
	    usuario.apellido_materno = usuario.apellido_materno.downcase
	    if usuario.save
	      flash[:success] = 'Se ha creado el usuario'
	      redirect_to menu_path
	    else
	      flash[:error] = 'Hubo un error al crear el usuario'
	      redirect_to new_usuario_path()
	    end
	end

	def edit
		@usuario = Usuario.find(params[:id])
		@usuario.update_attributes(params[:usuario])
	end

end
