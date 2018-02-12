class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game

    if (@player1 == "rock" && @player2 == "scissors") ||
      (@player1 == "scissors" && @player2 == "paper") ||
      (@player1 == "paper" && @player2 == "rock")
      winning_player = "player 1"
      winning_item = player1
    end

    if (@player2 == "rock" && @player1 == "scissors") ||
      (@player2 == "scissors" && @player1 == "paper") ||
      (@player2 == "paper" && @player1 == "rock")
      winning_player = "player 2"
      winning_item = player2
    end

    return "#{winning_item} wins for #{winning_player}"

  end

end
