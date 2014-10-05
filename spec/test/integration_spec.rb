=begin
使用者能夠在網站上產生文章，文章會包含標題、內容欄位
使用者能夠產生評論，藉以回應文章，評論包含內容欄位
每個文章都會有多個回應
文章底下可以看到該篇文章所有回應
文章的標題、內容不能為空白
回應的內容不可為空白
網站首頁是所有文章列表
=end
# require 'rails_helper'
#
# #這裡進行Post的model測試
# RSpec.describe Post, :type => :model do
#   #在每一個it的測試項目之前，都先建立一個post資料
#   before(:each) do
#     @post = Post.new
#   end
#
#   #測試post是否包含標題和內容
#   it "should contain :name, :title and :content" do
#     @post.name
#     @post.title
#     @post.content
#   end
#
#   #測試name如果空白，就不能儲存
#   it ":name should not be blank" do
#     @post.name = nil
#     @post.save.should == false
#   end
#
#   #測試post如果標題空白，就不能儲存
#   it ":title should not be blank" do
#     @post.title = nil
#     @post.save.should == false
#   end
#
#   #測試post如果內容空白，就不能儲存
#   it ":content should not be blank" do
#     @post.content = nil
#     @post.save.should == false
#   end
#
#   #測試post要和comment建立has_many的關係
#   it "has many comments" do
#     $post = Post.reflect_on_association(:comments)
#     $post.macro.should == :has_many
#   end
# end
#
# #這裡進行Comment的model測試
# RSpec.describe Comment, :type => :model do
#   before(:each) do
#     @comment = Comment.new
#   end
#
#   #測試comment是否包含 commenter body
#   it "should contain :commenter :content" do
#     @comment.commenter
#     @comment.content
#   end
#
#   #測試commenter如果內容空白，就不能儲存
#   it ":commenter should not be blank" do
#     @comment.commenter = nil
#     @comment.save.should == false
#   end
#
#   #測試body如果內容空白，就不能儲存
#   it ":content should not be blank" do
#     @comment.content = nil
#     @comment.save.should == false
#   end
#
#   #測試comment要和post建立belongs_to的關係
#   it "belongs to post" do
#     $comment = Comment.reflect_on_association(:post)
#     $comment.macro.should == :belongs_to
#   end
# end

=begin
文章底下可以看到該篇文章所有回應
網站首頁是所有文章列表
=end
#這裡進行Post的view測試
# RSpec.describe "posts/show", :type => :view do
#   #建立post和comment的資料，讓同一筆post裡頭含有多筆comment
#   before(:each) do
#     @post = assign(:post, Post.create(:title => "Title", :content => "Content"))
#     @comment_1 = @post.comments.create(:content => "display_comment_1")
#     @comment_2 = @post.comments.create(:content => "display_comment_2")
#   end
#
#   #測試view裡面，post的顯示頁面要同時顯示他所有的comment
#   it "renders comments by post" do
#     render
#     rendered.should include("display_comment_1")
#     rendered.should include("display_comment_2")
#   end
# end
#
# #這裡進行route測試
# RSpec.describe "Routing root", :type => :routing do
#   #測試網站首頁是包含所有文章的post index頁面
#   it "to posts index" do
#     expect(:get => "/").to route_to("posts#index")
#   end
# end


