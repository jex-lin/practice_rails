require "rails_helper"

describe 'Home page', :type => :feature do
  scenario "See the header and footer" do
    visit '/'
    page.should have_content('This is header')
    page.should have_content('This is footer')
  end
end

