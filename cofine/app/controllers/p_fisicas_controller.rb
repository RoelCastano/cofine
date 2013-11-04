class PFisicasController < ApplicationController

	def index
		@p_fisicas = PFisica.all
	end

	def new
		@p_fisica = PFisica.new
	end

	def create
	    p_fisica = PFisica.create(params[:p_fisica])
	    p_fisica.nombre = p_fisica.nombre.downcase
	    p_fisica.apellido_paterno = p_fisica.apellido_paterno.downcase
	    p_fisica.apellido_materno = p_fisica.apellido_materno.downcase
	    if p_fisica.save
	      flash[:success] = 'Se ha creado el Cliente'
	      redirect_to menu_path
	    else
	      flash[:error] = 'Hubo un error al crear el Cliente'
	      redirect_to new_p_fisica_path()
	    end
	end

	def edit
		@p_fisica = PFisica.find(params[:id])
		@p_fisica.update_attributes(params[:p_fisica])
	end

end
