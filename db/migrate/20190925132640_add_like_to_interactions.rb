class AddLikeToInteractions < ActiveRecord::Migration[6.0]
  def change
    add_column :interactions, :like, :boolean, default: false
  end
end
