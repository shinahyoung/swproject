class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.integer:user_id
    t.string:subject
    t.string:content
    t.string:name
    t.integer:hits
      t.timestamps null: false
    end
  end
end
