# coding: utf-8

require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit("/")
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
