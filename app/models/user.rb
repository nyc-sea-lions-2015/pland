class User < ActiveRecord::Base
  has_many :day_schedules
end
