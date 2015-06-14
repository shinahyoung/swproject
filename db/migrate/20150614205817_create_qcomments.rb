class CreateQcomments < ActiveRecord::Migration
  def change
    create_table :qcomments do |t|
      t.integer :user_id
      t.integer :qna_id
      t.string  :comment
      t.timestamps null: false
    end
  end
end
