class DailyEvent < ActiveRecord::Base
 belongs_to :day_schedule
 belongs_to :event 
end
