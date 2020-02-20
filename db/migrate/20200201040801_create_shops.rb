class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string  :name,        null:false
      t.string  :password,    null:false
      t.string  :address,     null:false
      t.integer :phonenumber, null:false
      t.string  :manager,     null:false
      t.timestamps
    end
  end
end
