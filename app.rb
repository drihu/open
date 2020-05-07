require 'sinatra'
require 'sinatra/reloader' if development?
require 'lazyrecord'
require_relative 'models/blog_post'

get '/' do
  redirect to('/blog')
end

get '/blog' do
  articles = BlogPost.all
  if !articles.empty?
    article = articles.sort { |article1, article2| article2.date <=> article1.date }
  end
  erb(:index, locals: { articles: articles })
end

get '/blog/new' do
  erb(:blog_new)
end

get '/blog/:id' do
  article = BlogPost.find(params['id'].to_i)
  erb(:index, locals: { articles: [article] })
end

post '/blog/new' do
  p params
  title = params['post-title']
  author = params['post-author']
  text = params['post-text']
  BlogPost.create(title, author, text)
  redirect to('/')
end
