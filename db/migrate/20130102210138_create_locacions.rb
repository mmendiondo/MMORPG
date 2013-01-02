class CreateLocacions < ActiveRecord::Migration
  def change
    create_table :locacions do |t|
      t.string :nombre
      t.string :imagen
      t.string :distancia

      t.timestamps
    end
  end
end
