require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#playe1' do
    it "tests that Game initialises with player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#playe2' do
    it "tests that Game initialises with player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it "damages the other player" do
      expect(player_2).to receive (:reduce_health)
      game.attack(player_2)
    end
  end

end
