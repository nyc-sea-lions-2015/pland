  class DaySchedules < ActiveRecord::Migration
  def change
    create_table :day_schedules do |t|
      t.integer  :user_id, null: false, index:true
      t.string   :day, null: false
      
      t.timestamps
    end
  end
end
