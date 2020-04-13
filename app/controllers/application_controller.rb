require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

    enable :sessions
    set :session_secret, "password_security"
  end

  get '/' do
    erb :'layout'
  end

  get '/signup' do

  end

  post '/signup' do
    redirect 'tweets/index'
  end


end
