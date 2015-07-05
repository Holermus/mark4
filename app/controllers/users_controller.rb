class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def update
    @user.update(post_params)
  end
  
  
  private
  
  def post_params
    params.require(:user).permit(:profilepic)
  end
  
end
