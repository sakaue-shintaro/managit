class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer  :shop_id,   null:false ,foreign_key:true
      t.text        :message
      t.timestamps
    end
  end
end
