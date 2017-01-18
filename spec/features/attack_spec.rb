feature 'attacking another player' do
    scenario 'player attacks player 2 and receives confirmation' do
        sign_in_and_play
        click_button('Attack!')
        expect(page).to have_content "You attacked Ben"
    end
end