class PFisica < ActiveRecord::Base
  attr_accessible :alta, :apellido_materno, :apellido_paterno, :curp, :domicilio_id, :estado, :fiel, :genero, :mail, :nacimiento, :nacionalidad, :nombre, :ocupacion, :pais, :rfc, :telefono
end
