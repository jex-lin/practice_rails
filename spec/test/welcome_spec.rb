require "rails_helper"

describe 'home page', :type => :feature do
  before do
    visit '/'
  end

  context "Check view structure" do
    it 'Check header' do
      page.should have_content('This is header')
    end
    it 'Check footer' do
      page.should have_content('This is footer')
    end
  end
end

