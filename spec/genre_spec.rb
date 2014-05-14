require 'spec_helper'

feature 'CRUD of genres' do
  scenario 'User can create a genre' do
    visit '/'
    click_on 'Add Genre'
    fill_in 'Genre', with: 'Pop'
    click_on 'Create Genre'
    expect(page).to have_content ('Pop')
  end
  scenario 'User can see a show page for a genre' do
    visit '/'
    click_on 'Add Genre'
    fill_in 'Genre', with: 'Pop'
    click_on 'Create Genre'
    click_on 'Pop'
    expect(page).to have_content ('Pop')
  end

  scenario 'User can Update an genre' do
  visit '/'
  click_on 'Add Genre'
  fill_in 'Genre', with: 'Pop'
  click_on 'Create Genre'
  click_on 'Pop'
  click_on 'Edit'
  fill_in 'Update Genre', with: 'Rap'
  click_on 'Update Genre'
  expect(page). to have_content ('Rap')
  end

  scenario 'User can Delete a genre' do
    visit '/'
    click_on 'Add Genre'
    fill_in 'Genre', with: 'Pop'
    click_on 'Create Genre'
    click_on 'Add Genre'
    fill_in 'Genre', with: 'Rap'
    click_on 'Create Genre'
    click_on 'Pop'
    click_on 'Delete'
    expect(page).to_not have_content('Pop')
    expect(page). to have_content ('Rap')
  end
end