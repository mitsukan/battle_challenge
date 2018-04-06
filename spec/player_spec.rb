require './lib/player.rb'

describe Player do

  describe '#name' do
    it "returns the player name when method is called" do
      player1 = Player.new("Testplayer1")
      expect(player1.name_recall).to eq("Testplayer1")
    end
  end
end
