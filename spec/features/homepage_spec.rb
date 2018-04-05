require './app.rb'
require 'capybara/rspec'

Capybara.app = Battle

feature "Testing homepage" do


end

feature "Entering player names" do
  scenario "enter player names into the form" do
    visit("/")
    fill_in :player1, with: "Jihin"
    fill_in :player2, with: "Louis"

    click_button "Submit"
    expect(page).to have_content "Player 1: Jihin! Player 2: Louis!"
  end
end
