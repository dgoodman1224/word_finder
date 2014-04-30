get '/' do
	#@words = Words.new.parse_file
  erb :index
end

post '/results' do
	erb :results
end