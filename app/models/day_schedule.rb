class DaySchedule < ActiveRecord::Base
  belongs_to :user
  has_many :daily_events
  has_many :events, through: :daily_events
end
