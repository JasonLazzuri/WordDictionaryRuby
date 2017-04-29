require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the homepage', {:type => :feature}) do
  it('displays a list of words') do
    visit('/')
    click_link('Add a New Word')
    expect(page).to have_content('Add New Word')
  end
end

  describe('the word form page', {:type => :feature}) do
    it('lets you add a new word to the word list') do
      visit('/word_form')
      fill_in("word", :with => 'bat')
      click_button('Add it!')
      expect(page).to have_content('Success!')
    end
  





end
