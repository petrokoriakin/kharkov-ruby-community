class Comment < ActiveRecord::Base
   attr_accessible :title, :body , :user_id
   belongs_to :user
   belongs_to :article
   default_scope :order => 'created_at DESC'

end
