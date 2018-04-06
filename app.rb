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
    @player1 = $player1.name_recall
    @player2 = $player2.name_recall
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name_recall
    @player2 = $player2.name_recall
    erb(:attack)
  end
end
