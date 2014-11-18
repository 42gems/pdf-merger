require 'spec_helper'

feature 'should add and delete table rows' do
  background do
    visit(root_path)
  end
  scenario 'my first test' do
    expect(page).to have_selector('button#add')
    expect(page).to have_selector('button.delete')
  end

  scenario 'test add button', :js => true do
    find_by_id('add').click
    page.should have_css('table.table tr', count: 3)
  end

  scenario 'test delete button', :js => true do
    find_by_id('add').click
    first(:button, 'Delete').click
    page.should have_css('table.table tr', count: 2)
  end

end