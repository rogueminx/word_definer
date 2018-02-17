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
  @new_word = params["word"]
  @new_word = Word.new(@new_word)
  @new_word.save()
  @wordlist = Word.all()
  erb(:wordlist)
end

get ('/definition') do

  erb(:definition)
end

post('/definition') do
  @definition_list = Word.find("frog")
  new_definition = params["definition"]
  @new_word.save_definition(new_definition)
  # @definition_list = new_definition.call_definitions
  # @definitionlist = new_definition.save_definition(new_definition)
  erb(:definition)
end
