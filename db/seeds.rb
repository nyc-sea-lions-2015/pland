require 'faker'

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(first_name: first_name,
              last_name:  last_name,
              dob:        Faker::Date.between(80.years.ago, 18.years.ago),
              email:      Faker::Internet.user_name("#{first_name} #{last_name}", %w(_ -)),
              password:   '1234')  
end

5.times do
  day_array = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
  day_array.each do |day|
    DaySchedule.create(user:       User.all.sample,
                       day:        day,
                       start_date: 3.days.ago)
  end
end

event_types = %w(food music festival museum)
event_types.each do |event_type|
  EventType.create(description: event_type)
end

20.times do 
  start = DateTime.parse('2015-03-29 8:00:00AM')
  7.times do |day|
    Event.create(creator:        User.all.sample,
                 event_type:     EventType.all.sample,
                 description:    Faker::Company.name,
                 open_datetime:  start + day.days,
                 end_datetime:   start + day.days + 12.hours)
  end
end


