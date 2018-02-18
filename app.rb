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
  @@new_word = Word.new(new_word)
  @@new_word.save()
  @wordlist = Word.all()
  @clicked_link = params[:id]
  Word.find(@clicked_link)
  erb(:wordlist)
end

get('/definitions/:id') do
  path_array = request.path.split('/')
  temp_id = path_array.last
  @@current_word = Word.temp_find_word(temp_id.to_i)
  erb(:definition)
end

post('/definition') do
  path_array = request.path.split('/')
  temp_id = path_array.last
  @@current_word
  definition = params["definition"]
  @@new_word.save_definition(definition)
  @definition_list = @@new_word.call_definitions()
  erb(:definition)
end
