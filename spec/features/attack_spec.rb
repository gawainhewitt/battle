require "capybara/rspec"
require_relative "../../app"
require 'features/web_helpers'

Capybara.app = Battle


feature 'attack' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Gawain attacked Kieran'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    # click_link 'OK'
    expect(page).not_to have_content 'Kieran: 32HP'
    expect(page).to have_content 'Kieran: 22HP'
  end
end