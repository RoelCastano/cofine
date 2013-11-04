class Usuario < ActiveRecord::Base
  	attr_accessible :apellido_materno, :apellido_paterno, :nombre, :password_digest, :password, :mail
  	has_secure_password

	before_save :create_remember_token	

	validates :apellido_materno, 		:presence => true
	validates :apellido_paterno, 		:presence => true
	validates :nombre, 					:presence => true
	validates :password_digest,			:presence => true 
	validates :mail,					:presence => true


	def nombre_completo
		"#{nombre.titleize} #{apellido_paterno.titleize} #{apellido_materno.titleize}"
  	end

	private

		def create_remember_token
			self.remember_token = SecureRandom.urlsafe_base64
		end

end
