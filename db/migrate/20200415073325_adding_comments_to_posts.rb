class AddingCommentsToPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :users
      t.references :posts
      t.timestamps
  end
end
