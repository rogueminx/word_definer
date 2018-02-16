require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('pry')

get('/') do

  erb(:input)
end

post('/') do

  erb(:output)
end
