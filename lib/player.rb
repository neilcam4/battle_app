class Player
  attr_reader :name
  attr_accessor :hit_points
  def initialize(name, hit_points = 60)
    @hit_points = hit_points
    @name = name
  end

  # def attack(opponent)
  #   opponent.reduce_health
  # end

  def reduce_health
    @hit_points -= 10
  end

end
