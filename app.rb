require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
    set :session_secret, "makers"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect "/play"
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    # $player_2_hitpoints = $player_2.hit_points
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end

