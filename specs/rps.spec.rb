require("minitest/autorun")
require("minitest/rg")

require_relative("../models/rps.rb")

class TestRps < Minitest::Test

  def setup()
    @game1 = Game.new("paper", "rock")
    @game2 = Game.new("rock", "scissors")
    @game3 = Game.new("scissors", "paper")
    @game4 = Game.new("rock", "paper")
    @game5 = Game.new("scissors", "rock")
    @game6 = Game.new("paper", "scissors")
  end

  def test_rock_beats_scissors()
    assert_equal("rock wins", @game2.play_game())
    assert_equal("rock wins", @game5.play_game())
  end

  def test_paper_beats_rock()
    assert_equal("paper wins", @game1.play_game)
    assert_equal("paper wins", @game4.play_game)
  end

  def test_scissors_beats_paper()
    assert_equal("scissors wins", @game3.play_game())
    assert_equal("scissors wins", @game6.play_game())
  end

end
