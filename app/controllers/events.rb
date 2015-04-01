get '/events' do
  events = Event.all

  erb :'events/index', locals: {events: events}
end