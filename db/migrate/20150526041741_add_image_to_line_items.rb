class AddImageToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :image, :string
  end
end
