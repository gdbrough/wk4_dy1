require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/rps.rb")

get "/rps/:player1/:player2" do
  player1 = params[:player1]
  player2 = params[:player2]
  winner = Game.new(player1, player2)
  @play1 = player1
  @play2 = player2
  @rps_winner = winner.play_game()
  erb(:result)
end

get "/rps/" do
  erb(:home)
end
