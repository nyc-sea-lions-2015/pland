get '/events' do
  events = Event.all

  erb :'events/index', locals: {events: events}
end

get '/events/:id' do
  event = Event.find(params[:id])
  creator = User.find(event.creator_id)

  erb :'events/show', locals: {event: event, creator: creator}
end