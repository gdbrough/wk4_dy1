class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
# p player1
# p player2

    if (@player1 == "rock" && @player2 == "scissors")
      result = "rock wins for player 1"
    end

    if (@player1 == "scissors" && @player2 == "paper")
      result = "scissors wins for player 1"
    end

    if (@player1 == "paper" && @player2 == "rock")
      result = "paper wins for player 1"
    end

    if (@player2 == "rock" && @player1 == "scissors")
      result = "rock wins for player 2"
    end

    if (@player2 == "scissors" && @player1 == "paper")
      result = "scissors wins for player 2"
    end

    if (@player2 == "paper" && @player1 == "rock")
      result = "paper wins for player 2"
    end

    return result

  end

end
