require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'

module Feed
  class << self
    def base
      "http://pipes.yahoo.com/pipes/pipe.run?_id=e24258e68f6016bb6137f737552a203e"
    end
    
    def get(ingredient = '')
      uri = "#{base}&_render=json" 
      uri << "&ingredient=#{URI.escape(ingredient)}" unless ingredient.empty?
      JSON.parse(open(uri).read)["value"]["items"]
    end    
  end
end

get '/' do
  erb :index
end

get '/ingredient/*' do
  @ingredient = params[:splat].first
  @recipes = Feed.get @ingredient
  erb :index
end

post '/ingredient' do
  redirect "/ingredient/#{params[:ingredient]}"
end

get '/rss' do
  redirect "#{Feed.base}&_render=rss"
end

get '/rss/*' do
  redirect "#{Feed.base}&_render=rss&ingredient=#{params[:splat]}"
end
