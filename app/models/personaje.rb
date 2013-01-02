class Personaje < ActiveRecord::Base
  attr_accessible :ataque, :defenza, :especie, :experiencia, :familia, :locacion_id, :usuario_id, :nivel, :nombre, :oro, :tipo, :vida, :vida_perdida

  has_many :personaje_misions

end
