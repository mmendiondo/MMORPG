class Item < ActiveRecord::Base
  attr_accessible :ataque, :defenza, :dureza, :especie, :imagen, :nivel, :nombre, :valor
end
