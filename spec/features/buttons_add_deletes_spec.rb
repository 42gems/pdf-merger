require 'spec_helper'

feature 'my first feature' do
  background do
    visit '/'
  end
  scenario 'my first test' do
    expect(page).to have_selector('button#add')
    expect(page).to have_selector('button.delete')
  end
end