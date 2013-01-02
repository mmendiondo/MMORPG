class CreateTipoItems < ActiveRecord::Migration
  def change
    create_table :tipo_items do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
