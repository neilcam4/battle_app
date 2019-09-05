require 'sinatra/base'
require './lib/game'
require './lib/player'
require_relative'./lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
   # @player1 =  $player1
   # @player2  = $player2
   @game = $game
    erb :play
  end

  get '/attack' do
    # @player1 = $player1
    # @player2 = $player2
    # @player_1_name = $player1.name
    # @player_2_name = $player2.name
    # $player1.attack($player2)
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file ==$0


end
