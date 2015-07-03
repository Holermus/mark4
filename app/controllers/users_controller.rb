class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.create( user_params )
  end
  
  private
  
  def user_params
    params.require(:user).permit(:avatar)
  end
end
