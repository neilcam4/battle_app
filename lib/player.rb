class Player
  attr_reader :hit_points, :name
  def initialize(name, hit_points = 60)
    @hit_points = hit_points
    @name = name
  end

end
