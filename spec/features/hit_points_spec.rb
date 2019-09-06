require "./spec/spec_helper"
require_relative "web_helpers"

feature "Reduce victim's hit points" do
  scenario "attack player 2" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content "Marley: 50HP"
  end
end
