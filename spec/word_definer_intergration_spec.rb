require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add word', {:type => :feature}) do
  it('Adds a new word') do
    visit('/')
    fill_in('word', :with => "frog")
    click_button('Add Word!')
    expect(page).to have_content("frog")
  end
end

# describe('click link', {:type => :feature}) do
#   it('Collect the id of the clicked link') do
#     visit('/')
#     fill_in('word', :with => "frog")
#     click_link('frog')
#     visit('/definition')
#     expect(page).to have_content("frog")
#   end
# end
