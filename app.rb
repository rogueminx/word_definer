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
  @clicked_link = Word.find(params[:id])
  erb(:wordlist)
end

get('/definitions/:id') do
  erb(:definition)
end

post('/definition') do
  # new_definition = params["definition"]
  # new_word.save_definition(new_definition)
  erb(:definition)
end
