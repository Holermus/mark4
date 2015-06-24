class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.create( user_params )
    @post.save
  end

  def user_params
      params.require(:user).permit(:image)
  end
  
end
