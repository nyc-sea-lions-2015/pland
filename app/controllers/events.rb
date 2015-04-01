get '/events' do
  events = Event.all

  erb :'events/index', locals: {events: events}
end

get '/events/edit/:id' do
  event = Event.find(params[:id])
  event_types = EventType.all

  erb :'events/edit', locals: {event: event, event_types: event_types}
end


get '/events/:id' do
  event = Event.find(params[:id])

  erb :'events/show', locals: {event: event}
end

post '/events/:id' do
end

put '/events/:id' do
  p params

  redirect "/events/#{params[:id]}"
end

delete '/events/:id' do
  event = Event.find(params[:id])
  event.destroy

# why does request.xhr? not working?
  if event
    if request.xhr?
      '1'
    else
      redirect '/events'
    end
  else
    if request.xhr?
      '0'
    else
      [500, "Whhhhat? it be gone!!!"]
    end
  end
end