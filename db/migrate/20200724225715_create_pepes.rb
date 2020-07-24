class CreatePepes < ActiveRecord::Migration[6.0]
  def change
    create_table :pepes do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end
