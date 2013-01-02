class CreatePersonajeMisions < ActiveRecord::Migration
  def change
    create_table :personaje_misions do |t|
      t.string :personaje_id
      t.string :mision_id
      t.integer :finalizada

      t.timestamps
    end
  end
end
