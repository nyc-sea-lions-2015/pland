class AddStartDateToDaySchedules < ActiveRecord::Migration
  def change
    add_column :day_schedules, :start_date, :datetime, null: false
  end
end
