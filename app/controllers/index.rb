get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/results' do
	@name = Person.new(params[:name])
	p @name
	redirect '/results'

	end

get '/results' do
	p @name
		@name = params[:name]
  
  erb :gay
end
