class UserGroupsController < ApplicationController
  def edit
    @user_groups = UserGroup.find(params[:id])
  end

  def update
    @user_groups = UserGroup.find(params[:id])

   if @user_groups.update_attributes(user_group_params)
      redirect_to groups_url
   else
      render :action => 'edit'
   end
  end

  def create
    @user_groups = StudentCohort.new(user_group_params)

    if @user_groups.save
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