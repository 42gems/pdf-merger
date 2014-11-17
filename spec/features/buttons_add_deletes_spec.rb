require 'spec_helper'

describe 'main page' do
  it 'check buttons' do
    visit '/'
    expect(page).to have_selector('button#add')
    expect(page).to have_selector('button.delete')
  end
end