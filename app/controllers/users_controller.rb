class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
    @user_posts = @user.user_posts.paginate(:page => params[:page])
  end
  
  def create
    @user = User.create( user_params )
    @user = User.save
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes( user_params )
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:profilepic, :content)
  end
  
end
