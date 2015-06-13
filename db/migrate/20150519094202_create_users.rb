class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string    :username
        t.string    :password
        t.string    :name
        t.string    :birth
        t.string    :addr
        t.string    :phone
        t.string    :email
        t.integer   :point
        t.integer   :money
        t.timestamps null: false
    end
  end
end
