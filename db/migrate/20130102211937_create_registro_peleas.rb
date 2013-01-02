class CreateRegistroPeleas < ActiveRecord::Migration
  def change
    create_table :registro_peleas do |t|
      t.integer :personaje_id
      t.integer :personaje_enemigo_id
      t.integer :ganador_id
      t.integer :perdedor_id
      t.integer :danio_ganador
      t.integer :danio_perdedor

      t.timestamps
    end
  end
end
