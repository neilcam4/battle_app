require "./spec/spec_helper"
require_relative "web_helpers"

feature 'Player loses' do
  scenario 'Player reaches 0HP and loses' do
    sign_in_and_play
    10.times do
      click_button "Attack"
      click_button "OK"
    end
    click_button "Attack"
    expect(page).to have_content "Bob wins!"
  end
end