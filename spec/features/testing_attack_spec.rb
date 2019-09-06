require "./spec/spec_helper.rb"
require_relative "web_helpers"

feature ' Reduces hit points' do
  scenario ' When attacked it reduces player hit_points by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Marley: 60HP'
    expect(page).to have_content 'Marley: 50HP'

  end
end
