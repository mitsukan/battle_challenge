def sign_in_and_play
  visit("/")
  fill_in :player1, with: "Testplayer1"
  fill_in :player2, with: "Testplayer2"
  click_button "Submit"
end
