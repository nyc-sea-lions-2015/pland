class Event < ActiveRecord::Base
  belongs_to :event_type
  belongs_to :creator, class_name: 'User'
  has_many :daily_events
  has_many :day_schedules, through: :daily_events
end
