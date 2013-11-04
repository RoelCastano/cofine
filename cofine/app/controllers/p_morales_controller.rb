class PMoralesController < ApplicationController

	def index
		@p_morales = PMoral.all
	end

	def new
		@pm = PMoral.new
	end

	def create
	    p_moral = PMoral.create(params[:pm])
	    p_moral.nombre = p_moral.nombre.downcase
	    p_moral.apellido_paterno = p_moral.apellido_paterno.downcase
	    p_moral.apellido_materno = p_moral.apellido_materno.downcase
	    if p_moral.save
	      flash[:success] = 'Se ha creado el usuario'
	      redirect_to menu_path
	    else
	      flash[:error] = 'Hubo un error al crear el usuario'
	      redirect_to new_p_morale_path()
	    end
	end

	def edit
		@p_moral = PMoral.find(params[:id])
		@p_moral.update_attributes(params[:p_moral])
	end

end
