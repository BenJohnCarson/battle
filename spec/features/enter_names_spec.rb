require 'sinatra/base'
require 'spec_helper'

feature 'Enter names' do
	scenario 'submitting names' do
		visit('/')
		fill_in :player_1_name, with: 'Sam'
		fill_in :player_2_name, with: 'Ben'
		click_button 'Submit'
		expect(page).to have_content 'Sam vs. Ben'
	end
end