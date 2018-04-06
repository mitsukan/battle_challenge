require './app.rb'
require 'capybara/rspec'

Capybara.app = Battle


feature "Entering player names" do
  scenario "enter player names into the form" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Testplayer1! Player 2: Testplayer2!"
  end
end

feature "Player 1 sees player 2's hitpoints" do
  scenario "P1 sees P2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Player 2 hitpoints: 10"
  end

end
