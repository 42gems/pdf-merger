require 'spec_helper'

feature 'my first feature' do
  background do
    visit '/'
  end
  scenario 'my first test' do
    expect(page).to have_selector('button#add')
    expect(page).to have_selector('button.delete')
  end
  scenario 'click button add' do
    find_by_id('add').click
  end
end