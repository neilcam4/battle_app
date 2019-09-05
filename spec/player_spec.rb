require 'player'

describe Player do
  describe '#hit_points'
let(:bob) { Player.new("Bob") }
let(:marley) { Player.new("Marley") }
    it "checks the players health value" do
    # dave = Player.new("Dave")
    expect(bob.hit_points).to eq 60
  end

  describe '#name' do
    it "returns the name" do
      # dave = Player.new("Dave")
      expect(bob.name).to eq "Bob"
    end
  end

  describe '#attack' do
    it 'damages the opponent' do
      expect(marley).to receive (:reduce_health)
      bob.attack(marley)
    end
  end

  describe '#reduce_health' do
    it 'reduces health points by 10' do
      expect { bob.reduce_health }.to change { bob.hit_points}.by(-10)
    end
  end

end
