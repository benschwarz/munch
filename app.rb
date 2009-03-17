require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'

module Feed
  class << self
    def base
      # Make your own or clone mine
      # http://pipes.yahoo.com/pipes/pipe.info?_id=e24258e68f6016bb6137f737552a203e
      "http://pipes.yahoo.com/pipes/pipe.run?_id=e24258e68f6016bb6137f737552a203e"
    end
    
    def get(ingredient = '')
      uri = "#{base}&_render=json" 
      uri << "&ingredient=#{ingredient}" unless ingredient.empty?
      JSON.parse(open(uri).read)["value"]["items"]
    end    
  end
end

get '/' do
  @recipes = Feed.get
  erb :index
end

get '/ingredient/*' do
  @ingredient = params[:splat].first
  @recipes = Feed.get
  erb :index
end

post '/ingredient' do
  @ingredient = params[:ingredient]
  @recipes = Feed.get 
  erb :index
end

get '/rss' do
  redirect "#{Feed.base}&_render=rss"
end

