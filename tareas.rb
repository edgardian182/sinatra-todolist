require 'sinatra'
require 'make_todo'

# make_todo es como tener un model TAREA en Rails

get '/' do
  @tareas = Tarea.all
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  Tarea.create(params[:title])
  redirect '/'
end

get '/:id' do
  Tarea.update(params[:id])
  redirect '/'
end

get '/:id/delete' do
  Tarea.destroy(params[:id])
  redirect '/'
end



get '/contacto' do
  erb :contacto
end

post '/contacto' do

  redirect '/'
end