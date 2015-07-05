class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(post_params)

    if @user.save
      redirect_to profile_path
     else
      redirect_to profile_path
    end
  end
  
  def update
    @user.update(post_params)
  end
  
  private
  
  def post_params
    params.require(:user).permit(:profilepic)
  end
  
end
