class Game

  attr_reader :attacker, :victim, :players

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
    @attacker = @player1
    @victim = @player2
  end

  def switch_turn
    @attacker == @player1 ? @attacker = @player2 : @attacker = @player1
    @victim == @player2 ? @victim = @player1 : @victim = @player2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(opponent)
    opponent.reduce_health

  end
end
