require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the contact path', {:type => :feature}) do
  it('goes to the index page,inputs data checks for success page') do
    visit('/')
    fill_in('first_name', :with => 'Joe')
    fill_in('last_name', :with => 'Blow')
    fill_in('job_title', :with => 'ABC')
    fill_in('company', :with => 'Assassin')
    click_button('Add yo contact ya! Bitch!')
    click_link("go to your contact page")
    expect(page).to have_content('Joe Blow')
  end

  # it('goes to the add-dealership page, adds one checks, adds a new vehicle and checks for entry of vehicle') do
  #   visit('/')
  #   click_link('Add New Dealership')
  #   fill_in('name', :with => 'anything')
  #   click_button('Add Dealership')
  #   click_link('Add New Vehicle')
  #   fill_in('make', :with => 'Volvo')
  #   fill_in('model', :with => '740')
  #   fill_in('year', :with => '1982')
  #   click_button('Add Vehicle')
  #   click_link('See Vehicle List')
  #   expect(page).to have_content('740')
  # end
end
