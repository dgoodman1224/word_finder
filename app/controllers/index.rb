get '/' do
  erb :index
end

post '/results' do
	@words = Search::find_bingos(params[:letters])
	erb :results
end