class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nombre
      t.integer :ataque
      t.integer :defenza
      t.integer :dureza
      t.integer :nivel
      t.integer :especie
      t.integer :valor
      t.string :imagen

      t.timestamps
    end
  end
end
