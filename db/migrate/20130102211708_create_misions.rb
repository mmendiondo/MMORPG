class CreateMisions < ActiveRecord::Migration
  def change
    create_table :misions do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :experiencia
      t.integer :oro
      t.integer :repetible
      t.integer :nivel_necesario
      t.integer :es_principal
      t.integer :locacion_id

      t.timestamps
    end
  end
end
