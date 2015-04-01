class DaySchedule < ActiveRecord::Base
  belongs_to :user
  has_many :daily_events
  has_many :events, through: :daily_events

  validates_uniqueness_of :user_id, scope: :day

  def self.days_array
    %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
  end

  private
end
