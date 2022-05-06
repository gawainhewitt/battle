# coding: utf-8

require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Gawain'
    fill_in :player_2_name, with: 'Alex'
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content "Gawain vs. Alex"
  end
end

