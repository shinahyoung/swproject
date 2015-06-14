class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.integer  :user_id
      t.string  :image
      t.integer :point
      t.integer :price
      t.integer :qty
      t.text    :option
      t.string  :title
      t.string  :fromname
      t.string  :fromphone
      t.string  :toname
      t.string  :tophone
      t.string  :toaddr
      t.text    :memo
      t.integer :total_price
      t.integer :total_point
      t.timestamps null: false
    end
  end
end
