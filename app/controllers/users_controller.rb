class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def create_profilepic
    @user = User.create( user_params )
  end
  
  private
  
  def user_params
    params.require(:user).permit(:profilepic, :profilepic_file_name)
  end
  
end
