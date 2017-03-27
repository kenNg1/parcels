require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel app path', {:type => :feature}) do
  it('processes the user entries and returns the total cost') do
    visit('/')
    fill_in('height', :with => '2')
    fill_in('length', :with => '2')
    fill_in('width', :with => '2')
    fill_in('weight', :with => '4')
    fill_in('distance', :with => '20')
    fill_in('speed', :with => 'Express')
    click_button('Send')
    expect(page).to have_content("176")
  end
end
