class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table:sales do |t|
      t.datetime    :date,       null:false
      t.integer  :shop_id,    null:false ,foreign_key:true
      t.integer     :ten_oclock, null:false
      t.integer     :eleven_oclock, null:false
      t.integer     :twelve_oclock, null:false
      t.integer     :thir_teen_oclock, null:false
      t.integer     :four_teen_oclock, null:false
      t.integer     :fif_teen_oclock, null:false
      t.integer     :seven_teen_oclock, null:false
      t.integer     :eigh_teen_oclock, null:false
      t.integer     :nine_teen_oclock, null:false
      t.integer     :twenty_oclock, null:false
      t.integer     :twenty_one_oclock, null:false
      t.integer     :twenty_two_oclock, null:false
      t.timestamps
    end
  end
end
