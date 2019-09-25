class CreateInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :interactions do |t|
      t.references :giver, null: false, foreign_key: false
      t.references :receiver, null: false, foreign_key: false

      t.timestamps
    end
    add_foreign_key :interactions, :users, column: :giver_id, primary_key: :id
    add_foreign_key :interactions, :users, column: :receiver_id, primary_key: :id
  end
end
