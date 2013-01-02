class Usuario < ActiveRecord::Base
  attr_accessible :mail, :nacionalidad, :nombre, :password
end
