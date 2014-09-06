class Post < ActiveRecord::Base
  validate :name,   :presence => true
  validate :title,  :presence => true,
                    :length => { :mininum => 5 }
  has_many :comments, :dependent => :destroy
end
