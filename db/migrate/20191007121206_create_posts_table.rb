class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :user_id
      t.text :content
      t.string :image_url
      t.integer :step_count
      t.integer :cardio_score
      t.integer :caloric_burn
      t.integer :walking_distance
      t.timestamps null: false
    end
  end
end
