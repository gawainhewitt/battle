def sign_in_and_play 
  visit('/')
  fill_in :player_1_name, with: 'Gawain'
  fill_in :player_2_name, with: 'Kieran'
  click_button 'Submit'
end