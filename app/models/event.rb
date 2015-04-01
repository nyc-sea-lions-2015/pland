class Event < ActiveRecord::Base
  belongs_to :event_type
  has_many :daily_events
  has_many :day_schedules, through: :daily_events
end
