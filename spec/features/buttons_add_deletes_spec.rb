require 'spec_helper'

feature 'Tests for main page' do
  background do
    visit(root_path)
  end

  scenario 'User should see PDF Merger' do
    expect(page).to have_title 'PDF Merger'
  end

  scenario 'User should see add button' do
    expect(page).to have_selector('button#add',visible: true)
  end

  scenario 'User adds new row ', js: true do
    find_by_id('add').click
    page.should have_css('table.table tr', count: 3)
    page.should have_css('button.delete', count: 3)
  end

  scenario 'User should see delete button' do
    expect(page).to have_selector('button.delete',visible: false)
  end

  scenario 'User deletes row', js: true do
    find_by_id('add').click
    first(:button, 'Delete').click
    page.should have_css('table.table tr', count: 2)
    page.should have_css('button.delete', count: 0)
  end

  scenario 'User should see input form' do
    expect(page).to have_selector('input')
    expect(page).to have_selector(' button.btn',visible: true)
  end

  #incorrect
  scenario 'User should not send empty field ' do
    find('.btn.btn-primary',text: 'Merge').click
    page.driver.post('/upload')
    page.driver.status_code.should eql 500
  end

  scenario 'User  field ' do
    find(:css, '#first_firstName').set('./spec/rails_helper.rb')
    find(:css, '#second').set('./spec/rails_helper.rb')
    find('.btn.btn-primary',text: 'Merge').click
    expect(page).to have_selector('.alert.alert-danger')
  end
end