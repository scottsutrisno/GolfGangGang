class UserGroupsController < ApplicationController
  def edit
    @user_group = UserGroup.find(params[:id])
  end

  def update
    @user_group = UserGroup.find(params[:id])

   if @user_group.update_attributes(user_group_params)
      redirect_to groups_url
   else
      render :action => 'edit'
   end
  end

  def create
    @user_group = UserGroup.new(user_group_params)

    if @user_group.save
      redirect_to groups_url
    else
      render :action => 'new'
    end
  end

  def destroy
    UserGroup.find(params[:id]).destroy
    redirect_to groups_url
  end

private

  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id)
  end


end