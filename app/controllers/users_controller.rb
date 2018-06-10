class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    redirect_to users_path, :notice => "User has been deleted"
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(private_params)
      redirect_to users_path, :notice => "User has been updated"
    else
      redirect_to users_path, :alert => "Unable to update user"
  end
end

private

def private_params
params.require(:user).permit(:role)
end

end
