class CreateHands < ActiveRecord::Migration[6.0]
  def change
    create_table :hands do |t|
      t.integer :user_id
      t.integer :user_score
      t.integer :dealer_score
      t.boolean :user_won

      t.timestamps
    end
  end
end
