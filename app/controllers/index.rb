get '/' do
	#@words = Words.new.parse_file
  erb :index
end

post '/results' do
	@words = Words.where("can_word = ?", Words.can(params[:letters]))
	p @words
	erb :results
end