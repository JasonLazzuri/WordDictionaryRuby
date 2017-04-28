require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')

get('/') do
  erb(:index)
end

get('/word_form') do
   erb(:word_form)
end

get('/word_list') do
  @words = Word.all()
  erb(:word_list)
end

post('/word_list') do
  word = params.fetch('word')
  Word.new(word).save()
  @words = Word.all()
  erb(:success)
end

get('/definitions/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definitions)
end


get('/word_list/:id/word_definition_form') do
    @word = Word.find(params.fetch('id').to_i())
    erb(:dealership_vehicles_form)
end

post('/word_definition_form') do
  definition = params.fetch('definition')
  @definition = Definition.new(definition)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word = word
  word.add_definition(@definition)
  erb(:success)
end
