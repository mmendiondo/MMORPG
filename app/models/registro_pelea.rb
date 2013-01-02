class RegistroPelea < ActiveRecord::Base
  attr_accessible :danio_ganador, :danio_perdedor, :ganador_id, :perdedor_id, :personaje_id, :personaje_enemigo_id
end
