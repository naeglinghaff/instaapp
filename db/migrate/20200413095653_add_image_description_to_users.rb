class AddImageDescriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :string
    add_column :users, :description, :text
    add_column :users, :website, :string
  end
end
