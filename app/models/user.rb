class User < ActiveRecord::Base
  has_secure_password

  has_many :day_schedules
  has_many :events, foreign_key: 'creator_id'
end
