class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :mail
      t.string :password
      t.integer :nacionalidad

      t.timestamps
    end
  end
end
