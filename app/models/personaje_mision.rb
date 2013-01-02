class PersonajeMision < ActiveRecord::Base
  attr_accessible :finalizada, :mision_id, :personaje_id

  belongs_to :personaje
  belongs_to :mision
end
