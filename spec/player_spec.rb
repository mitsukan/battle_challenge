require './lib/player.rb'

describe Player do

  describe '#name' do
    it "returns the player name when method is called" do
      player1 = Player.new(params[:'player1'])
      expect(subject.name_recall).to eq("Testplayer1")
    end
  end
end
