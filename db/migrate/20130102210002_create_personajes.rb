class CreatePersonajes < ActiveRecord::Migration
  def change
    create_table :personajes do |t|
      t.integer :usuario_id
      t.string :nombre
      t.integer :ataque
      t.integer :defenza
      t.integer :nivel
      t.integer :experiencia
      t.integer :especie
      t.string :familia
      t.integer :oro
      t.integer :locacion_id
      t.integer :vida
      t.integer :vida_perdida
      t.integer :tipo

      t.timestamps
    end
  end
end
