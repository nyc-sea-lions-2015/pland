class DaySchedule < ActiveRecord::Base
  has_many :daily_events
  has_many :events, through: :daily_events
end
