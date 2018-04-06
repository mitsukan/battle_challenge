require 'sinatra'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'

  get '/' do
    erb(:index)
  end

  post '/names' do
    p $player1 = Player.new(params[:'player1'])
    p $player2 = Player.new(params[:'player2'])
    redirect to('/play')
  end


  get '/play' do
    p $player1.name_recall
    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end
end
