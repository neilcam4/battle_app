require 'player'

describe Player do
  it "checks the players health value" do
    dave = Player.new("Dave")
    expect(dave.hit_points).to eq 60
  end

  describe '#name' do
    it "returns the name" do
      dave = Player.new("Dave")
      expect(dave.name).to eq "Dave"
    end
  end
end
