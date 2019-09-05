require "./spec/spec_helper.rb"

  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Bob'
      fill_in :player_2_name, with: 'Marley'
      click_button 'Submit'
      expect(page).to have_content 'Bob vs Marley!!'
    end
  end

  feature 'See Hit Points' do
    scenario 'seeing points of Player 2' do
      visit('/')
      fill_in :player_1_name, with: 'Bob'
      fill_in :player_2_name, with: 'Marley'
      click_button 'Submit'
      expect(page). to have_content 'Marley: 60HP'
    end
  end
