class ApplicationController < ActionController::Base
  protect_from_forgery
  #rescue_from CanCan::AccessDenied do |exception|
  #	redirect_to menu_url
   # flash[:notice] = "No tiene Acceso"
  #end

  def handle_unverified_request
  	sign_out
  	super
  end

  private
  	include SesionesHelper

end
