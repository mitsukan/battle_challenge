require './app.rb'
require 'capybara/rspec'

Capybara.app = Battle

feature "Switch to attack page" do
  scenario "click on attack button" do
    sign_in_and_play
    attack
    expect(page).to have_content "You punched each other in the face!"
  end
end
