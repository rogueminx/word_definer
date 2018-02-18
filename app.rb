require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer.rb')
require('pry')

get('/') do
  @wordlist = Word.all()
  erb(:wordlist)
end

post('/') do
  new_word = params["word"]
  new_word = Word.new(new_word)
  new_word.save()
  @wordlist = Word.all()
  @clicked_link = params[:id]
  Word.find(@clicked_link)
  erb(:wordlist)
end

get('/definitions/:id') do
  erb(:definition)
end

post('/definition') do
  input_definition = params.fetch["definition"]
  @defined_list
  erb(:definition)
end
