require './lib/player.rb'

describe Player do

  describe '#name' do
    it "returns the player name when method is called" do
    expect(subject.name).to eq("Testplayer1")
    end
  end
end
