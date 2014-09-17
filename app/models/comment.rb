class Comment < ActiveRecord::Base
  validates :commenter, :presence => true
  validates :content, :presence => true
  belongs_to :post
end
