get '/' do
	#@words = Words.new.parse_file
  erb :index
end

post '/results' do
	before = Time.now
	@words = Search::find_bingos(params[:letters])
	after = Time.now
	puts "This took ---------------------------------------"
	puts after - before
	erb :results
end