require_relative 'config/environment'

class App < Sinatra::Base

	configure do
	  enable :sessions
	  set :session_secret, "secret"
	end

	get '/' do 
	  @session = session

	  erb :index
	end

	get '/checkout' do 
		@session=session
		erb :checkout
	end

	post '/checkout' do 
		item=params[:item]
		session[:item]=item
		@session=session
		erb :checkout
	end


end