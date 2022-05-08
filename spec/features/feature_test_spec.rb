# coding: utf-8

require "capybara/rspec"
require_relative "../../app"
require 'features/web_helpers'

Capybara.app = Battle

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content "Gawain vs. Kieran"
  end
end

feature 'show score' do
  scenario 'displaying player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Kieran: 32HP"
  end
end



