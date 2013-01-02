class CreateTipoPersonajes < ActiveRecord::Migration
  def change
    create_table :tipo_personajes do |t|
      t.string :nombre
      t.string :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
