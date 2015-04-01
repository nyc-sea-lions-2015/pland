get '/events' do
  events = Event.all

  erb :'events/index', locals: {events: events}
end

get '/events/:id' do
  event = Event.find(params[:id])

  erb :'events/show', locals: {event: event}
end

delete '/events/:id' do
  event = Event.find(params[:id])
  event.destroy

  redirect '/events'
end