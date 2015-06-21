class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
end
