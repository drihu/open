require 'sinatra'
require 'sinatra/reloader' if development?
require 'lazyrecord'

get '/' do
  'hello world'
end
