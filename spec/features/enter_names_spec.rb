require "./spec/spec_helper.rb"
require_relative "web_helpers"

  feature 'Enter names' do
    scenario 'submitting names' do
      sign_in_and_play
      expect(page).to have_content 'Bob vs Marley!!'
    end
  end

  feature 'See Hit Points' do
    scenario 'seeing points of Player 2'do
      sign_in_and_play
      expect(page). to have_content 'Marley: 60HP'
    end
  end

  feature 'Attack' do
    scenario 'Player 1 attacks Player 2 and gets confirmation'do
      sign_in_and_play
      click_link 'Attack!'
      expect(page). to have_content 'Bob attacks Marley!'
    end
  end
