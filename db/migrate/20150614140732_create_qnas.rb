class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|
      t.integer :post_id
      t.string :title
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
