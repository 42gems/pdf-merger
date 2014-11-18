require 'spec_helper'

feature 'Tests for main page' do
  background do
    visit(root_path)
  end
  scenario 'Should check content on page' do
    expect(page).to have_title 'PDF Merger'
    expect(page).to have_selector('button#add',visible: true)
    expect(page).to have_selector('button.delete',visible: false)
    expect(page).to have_selector('input')
    expect(page).to have_selector(' button.btn',visible: true)
  end

  scenario 'User adds new row ', js: true do
    find_by_id('add').click
    page.should have_css('table.table tr', count: 3)
    page.should have_css('button.delete', count: 3)
  end

  scenario 'User deletes row', js: true do
    find_by_id('add').click
    first(:button, 'Delete').click
    page.should have_css('table.table tr', count: 2)
    page.should have_css('button.delete', count: 0)
  end
end