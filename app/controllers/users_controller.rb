class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def user_params
      params.require(:user).permit(:image)
  end
  
end
