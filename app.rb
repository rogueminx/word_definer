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
  erb(:wordlist)
end

get ('/definition') do
  # @definiton_list = new_word.call_definitions()
  erb(:definition)
end

post('/definition') do
  new_definition = params["definition"]
  Word.save_definition(new_definition)
  # @definitionlist = new_definition.save_definition(new_definition)
  erb(:wordlist)
end
