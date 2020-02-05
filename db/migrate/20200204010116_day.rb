class Day < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :days_of_weeks, foreign_key:true
      t.timestamps
    end
  end 
end
