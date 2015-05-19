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
      t.timestamps null: false
    end
  end
end
