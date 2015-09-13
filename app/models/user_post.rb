class UserPost < ActiveRecord::Base
	belongs_to :user
	validates :content, :presence => true, :length => { :maximum => 7000 }
	validates :user_id, :presence => true
	default_scope { order("created_at DESC") }
end
