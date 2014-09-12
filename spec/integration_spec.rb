=begin
使用者能夠在網站上產生文章，文章會包含標題、內容欄位
使用者能夠產生評論，藉以回應文章，評論包含內容欄位
每個文章都會有多個回應
文章底下可以看到該篇文章所有回應
文章的標題、內容不能為空白
回應的內容不可為空白
網站首頁是所有文章列表
=end
require 'rails_helper'

#這裡進行Post的model測試
RSpec.describe Post, :type => :model do
  #在每一個it的測試項目之前，都先建立一個post資料
  before(:each) do
    @post = Post.new
  end

  #測試post是否包含標題和內容
  it "should contain :name, :title and :content" do
    @post.name
    @post.title
    @post.content
  end

  #測試name如果空白，就不能儲存
  it ":name should not be blank" do
    @post.name = nil
    @post.save.should == false
  end

  #測試post如果標題空白，就不能儲存
  it ":title should not be blank" do
    @post.title = nil
    @post.save.should == false
  end

  #測試post如果內容空白，就不能儲存
  it ":content should not be blank" do
    @post.content = nil
    @post.save.should == false
  end

  #測試post要和comment建立has_many的關係
  it "has many comments" do
    $post = Post.reflect_on_association(:comments)
    $post.macro.should == :has_many
  end
end

#這裡進行Comment的model測試
RSpec.describe Comment, :type => :model do
  before(:each) do
    @comment = Comment.new
  end

  #測試comment是否包含 commenter body
  it "should contain :commenter :body" do
    @comment.commenter
    @comment.body
  end

  #測試commenter如果內容空白，就不能儲存
  it ":commenter should not be blank" do
    @comment.commenter = nil
    @comment.save.should == false
  end

  #測試body如果內容空白，就不能儲存
  it ":body should not be blank" do
    @comment.body = nil
    @comment.save.should == false
  end

  #測試comment要和post建立belongs_to的關係
  it "belongs to post" do
    $comment = Comment.reflect_on_association(:post)
    $comment.macro.should == :belongs_to
  end
end
