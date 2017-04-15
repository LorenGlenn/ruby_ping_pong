require('sinatra')
require('sinatra/reloader')
require('./lib/ping_pong')

get('/') do
  erb(:index)
end

post('/results') do
  @number = params.fetch('number').to_i
  @display = @number.ping_pong()
  erb(:results)
end
