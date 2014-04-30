get '/' do
  erb :index
end

post '/results' do
	@words = Words.where("can_word = ?", Words.can(params[:letters]))
	erb :results
end

post '/extra_results' do
	@words = Words.excess(params[:letters])
	erb :results
end