class Admin < ActiveRecord::Base
  attr_accessible :apellido_materno, :apellido_paterno, :nombre
end
