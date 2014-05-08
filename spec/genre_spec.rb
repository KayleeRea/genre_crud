require 'spec_helper'

feature 'CRUD of genres' do
  scenario 'User can create a genre' do
    visit '/'
    click_on 'Add Genre'
    fill_in 'Genre', with: 'Pop'
    click_on 'Create Genre'
    expect(page).to have_content ('Pop')
  end
end