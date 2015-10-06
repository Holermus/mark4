class UserPostsController < ApplicationController

	def create
		@user_post = current_user.user_posts.build(user_post)
		if @user_post.save
			redirect_to profile_path(current_user)
		else
			redirect_to profile_path(current_user)
		end
	end

	private

	def user_post
		params.require(:user_post).permit(:content)
	end
end
