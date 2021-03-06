require 'spec_helper'

feature 'Tests for main page' do
  background do
    visit(root_path)
  end

  scenario 'User should see title PDF Merger' do
    expect(page).to have_title 'PDF Merger'
  end

  scenario 'User should see add button' do
    expect(page).to have_selector('button#add', visible: true)
  end

  scenario 'User adds new row ', js: true do
    find_by_id('add').click
    page.should have_css('table.table tr', count: 3)
    page.should have_css('button.delete', count: 3)
  end

  scenario 'User should see delete button' do
    expect(page).to have_selector('button.delete', visible: false)
  end

  scenario 'User deletes row', js: true do
    find_by_id('add').click
    first(:button, 'Delete').click
    page.should have_css('table.table tr', count: 2)
    page.should have_css('button.delete', count: 0)
  end

  scenario 'User should see input form' do
    expect(page).to have_selector('input')
    expect(page).to have_selector('button.btn', visible: true)
  end

  scenario 'User should not be able to upload empty fields' do
    first(:css,'#files_0').set('./spec/rails_helper.rb')
    find('.btn.btn-primary', text:'Merge').click
    expect(page).to have_selector('.alert.alert-danger')
  end

  scenario 'User should see validation for starting fields', js: true do
    find('.btn.btn-primary', text:'Merge').click
    page.should have_content('This field cannot be blank',count: 2)
  end

  scenario 'User should see validation for fields', js: true do
    find_by_id('add').click
    find('.btn.btn-primary', text:'Merge').click
    page.should have_content('This field cannot be blank',count: 3)
  end

  scenario 'User should see field for input' do
    expect(page).to have_selector('#title')
  end
end