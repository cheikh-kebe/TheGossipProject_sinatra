require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do 
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end

  get '/gossips/:id' do
    erb :show, locals: {gossips: Gossip.find(params['id'].to_i)}
  end

  get '/gossips/:id/edit' do
    erb :edit , locals: {gossip: Gossip.edit(params['id'], params['gossip_content'])}
  end

  post "/gossips/edit/:id" do
    Gossip.edit(params['id'], params['gossip_content'])
    redirect '/'
  end


end
