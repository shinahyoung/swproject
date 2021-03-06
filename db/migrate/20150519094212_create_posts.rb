class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.integer   :user_id
    t.string    :category
    t.string    :title
    t.text  :content
    t.integer    :price
    t.integer    :point
    t.integer   :qty
    t.string    :select_opt
    t.text  :options
    t.string    :image2
    t.timestamps null: false
    end
  end
end
