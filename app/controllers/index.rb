get '/' do
	#@words = Words.new.parse_file
  erb :index
end

post '/results' do
	@words = Search::find_bingos(params[:letters])
	erb :results
end