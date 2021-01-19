require 'rails_helper'

describe 'As a visitor when I visit the index page' do
  before :each do

    @competition_1 = Competition.create!(name: 'Mens Regional', location: 'Louisville', sport: 'basketball')
    @competition_2 = Competition.create!(name: 'Womens Regional', location: 'Denver', sport: 'soccer')
    @competition_3 = Competition.create!(name: 'Kids Regional', location: 'San Diego', sport: 'volleyball')

    @team_1 = Team.create!(hometown: 'Leesburg', nickname: 'Rockets')
    @team_2 = Team.create!(hometown: 'Denver', nickname: 'Dolphins')
    @team_3 = Team.create!(hometown: 'Boulder', nickname: 'Bears')

    Championship.create!(competition_id: @competition_1.id, team_id: @team_1.id)
    Championship.create!(competition_id: @competition_1.id, team_id: @team_2.id)
    Championship.create!(competition_id: @competition_2.id, team_id: @team_1.id)
    Championship.create!(competition_id: @competition_3.id, team_id: @team_3.id)

    @player_1 = @team_1.players.create!(name: 'Billy Bigshoes', age: 12)
    @player_2 = @team_1.players.create!(name: 'Magic Mike', age: 33)
    @player_3 = @team_2.players.create!(name: 'Johnny Bullet', age: 22)

    visit competitions_path
  end
  it 'I see the name of all competitions with links to the show page' do
    expect(page).to have_link(@competition_1.name)
    expect(page).to have_link(@competition_2.name)
    expect(page).to have_link(@competition_3.name)

    click_on @competition_1.name

    expect(current_path).to eq(competition_path(@competition_1))
  end
end
