class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.string  :image
      t.integer :buy_id 
      t.integer :post_id
      t.integer :point
      t.integer :price
      t.integer :qty
      t.text    :option
      t.integer :user_id
      t.string  :addr
      t.string  :phone
      t.text  :memo
      t.string  :from
      t.string  :to
      t.integer :total_price
      t.integer :total_point
      t.timestamps null: false
    end
  end
end
