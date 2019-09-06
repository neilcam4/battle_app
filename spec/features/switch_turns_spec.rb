require "./spec/spec_helper"
require_relative "web_helpers"

describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      visit('/')
      fill_in :player_1_name, with: 'Bob'
      fill_in :player_2_name, with: 'Marley'
      click_button 'Submit'
      expect(page).not_to have_content "Marley's turn"
      expect(page).to have_content "Bob's turn"
    end

    scenario 'after player 1 attacks' do
      visit('/')
      fill_in :player_1_name, with: 'Bob'
      fill_in :player_2_name, with: 'Marley'
      click_button 'Submit'
      click_link 'Attack!'
      click_link 'OK'
      expect(page).not_to have_content "Bob's turn"
      expect(page).to have_content "Marley's turn"
    end
  end
end
