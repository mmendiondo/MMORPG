class Mision < ActiveRecord::Base
  attr_accessible :descripcion, :es_principal, :experiencia, :locacion_id, :nivel_necesario, :nombre, :oro, :repetible

end
