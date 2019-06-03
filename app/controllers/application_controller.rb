require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    user = User.find_by(username: params[:username], password: params[:password])
    if user
      session[:user_id] = user.id
      session[:username] = user.username
      session[:balance] = user.balance
<<<<<<< HEAD
      redirect '/account'
    else
      erb :error
    end

  
  end

  get '/account' do
    if !Helpers.is_logged_in?(session)
      erb :error
    else
    erb :account
    end
=======
    end

  redirect '/account'
  end

  get '/account' do
    
    erb :account
>>>>>>> 5c796f5666bf8adc73b97d45d026116ebad84764
  end

  get '/logout' do
    session.clear
    
    redirect '/'
  end


end

