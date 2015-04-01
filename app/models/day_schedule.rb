class DaySchedule < ActiveRecord::Base
  before_save :format_values

  belongs_to :user
  has_many :daily_events
  has_many :events, through: :daily_events

  validates_uniqueness_of :user_id, scope: :day

  def self.days_array
    %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
  end

  private

  # don't need to put in the day...get it from the start_date
  def format_values
    self.day = self.class.days_array[start_date.cwday - 1]
  end
end
