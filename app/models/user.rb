class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :about_me, :password, :password_confirmation, :remember_me

  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "600x600>", :thumb => "200x200>" }

  has_many :articles
  has_many :comments
end
