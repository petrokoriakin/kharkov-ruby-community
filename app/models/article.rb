class Article < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :user
  has_many :comments, :dependent => :destroy

  validates :title, :presence => true, :length => { :within => 1..140}
  default_scope :order => 'created_at DESC'
end
