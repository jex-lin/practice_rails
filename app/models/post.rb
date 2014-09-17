class Post < ActiveRecord::Base
  validates :name, :presence => true, :length => { :minimum => 3, :maximum => 12 }
  validates :title, :presence => true, :length => { :minimum => 5 }
  validates :content, :presence => { :message => "custom error message : can't be blank" }
  has_many :comments, :dependent => :destroy
end
