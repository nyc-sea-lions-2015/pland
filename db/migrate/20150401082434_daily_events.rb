class DailyEvents < ActiveRecord::Migration
  def change
    create_table :daily_events do |t|
      t.integer  :day_schedule_id, null: false, index:true
      t.integer  :event_id, null: false, index:true
      t.datetime :start_datetime, null: false
      t.datetime :end_datetime, null: false

      t.timestamps
    end
  end
end
