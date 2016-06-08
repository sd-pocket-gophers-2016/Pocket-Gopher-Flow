class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :content
      t.integer :views
      #t.integer :comment_id

      t.timestamps null: false
    end
  end
end
