class Domicilio < ActiveRecord::Base
  attr_accessible :calle, :codigo_postal, :colonia, :num_ext, :num_int
end
