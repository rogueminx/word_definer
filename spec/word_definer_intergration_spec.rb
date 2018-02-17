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
# describe('click word', {:type => :feature}) do
#   it('Takes you to a page of definitions for that word') do
#     visit('/')
#     fill_in('word', :with => "frog")
#     click_button('Add Word!')
#     click_link('frog')
#     expect(page).to have_content("frog,")
#   end
# end
