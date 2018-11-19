class AddToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :title, :text
    add_column :posts, :image_name, :text
  end
end
