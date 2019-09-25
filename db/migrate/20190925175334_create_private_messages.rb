class CreatePrivateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :private_messages do |t|
      t.references :sender, null: false, foreign_key: false
      t.references :receiver, null: false, foreign_key: false
      t.string :content

      t.timestamps
    end
    add_foreign_key :private_messages, :users, column: :sender_id, primary_key: :id
    add_foreign_key :private_messages, :users, column: :receiver_id, primary_key: :id
  end
end
