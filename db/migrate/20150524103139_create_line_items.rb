class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
    t.integer :buy_id
      t.integer :post_id
      t.integer :cart_id
      t.integer :point
      t.integer :price
      t.integer   :qty
      t.text    :options
      t.timestamps null: false
    end
  end
end
