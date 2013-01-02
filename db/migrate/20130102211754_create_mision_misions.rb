class CreateMisionMisions < ActiveRecord::Migration
  def change
    create_table :mision_misions do |t|
      t.integer :mision_id
      t.integer :mision_relacionada_id

      t.timestamps
    end
  end
end
