require "rails_helper"

describe '到 /posts 會顯示所有文章', :type => :feature do
  before do
    visit posts_path
  end

  scenario '顯示 title 及 description' do
    page.should have_content 'Post'
    page.should have_content 'CRUD'
  end

  scenario '顯示所有文章' do
    Post.all.each do |post|
      page.should have_content post.name
      page.should have_content post.title
      page.should have_content post.content
    end
  end

end
