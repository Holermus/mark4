class UserPost < ActiveRecord::Base
	attr_accessible :content
	belongs_to :user
	validates :content, :presence => true, :length => { :maximum => 7000 }
	validates :user_id, :presence => true
	default_scope :order => 'user_posts.created_at DESC'
end
