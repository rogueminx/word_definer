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
