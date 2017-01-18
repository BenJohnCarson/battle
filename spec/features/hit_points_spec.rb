feature 'view hit points' do
    scenario 'shows player 2 hit points' do
        visit('/')
        fill_in :player_1_name, with: 'Sam'
	    fill_in :player_2_name, with: 'Ben'
	    click_button 'Submit'
	    expect(page).to have_content 'Ben: 100hp'
	end
end