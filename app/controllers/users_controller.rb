class UsersController < ApplicationController
  
  def user_page
    @user = User.find(params[:id])
  end
  
def create
  @user = User.new(params[:user])
  if @user.save
    if params[:user][:profilepic].blank?
      flash[:notice] = "Successfully created user."
      redirect_to @user
    else
      render :action => "crop"
    end
  else
    render :action => 'new'
  end
end

def update
  @user = User.find(params[:id])
  if @user.update_attributes(params[:user])
    if params[:user][:profilepic].blank?
      flash[:notice] = "Successfully updated user."
      redirect_to @user
    else
      render :action => "crop"
    end
  else
    render :action => 'edit'
  end
end
  
  private
  
  def user_params
    params.require(:user).permit(:profilepic)
  end
  
end
