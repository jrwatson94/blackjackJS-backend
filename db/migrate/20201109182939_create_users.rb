class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :money
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
