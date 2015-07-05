class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.create( user_params )
  end

  def update
    @user = User.update(user_params)
  end
  
    def user_params
       params.require(:user).permit(:profilepic)
    end
  
end
