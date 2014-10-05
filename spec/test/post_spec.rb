require "rails_helper"

describe 'Post page', :type => :feature do
  scenario "See the post page's title and description" do
    visit posts_path
    page.should have_content('Post')
    page.should have_content('CRUD')
  end
end


describe 'New post page', :type => :feature do
  before :each do
    Post.make(:name => 'Anonymous', :title => 'assert', :text => 'disaster')
  end

  context "Check post/new" do
    pending
  end
end
