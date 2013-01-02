class CreatePersonajeItems < ActiveRecord::Migration
  def change
    create_table :personaje_items do |t|
      t.integer :item_id
      t.integer :personaje_id
      t.integer :equipado
      t.integer :danio

      t.timestamps
    end
  end
end
