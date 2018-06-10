class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @users = User.all
  end

  def new
    @group = Group.new
    @users = User.all
  end



  def edit
    @group = Group.find(params[:id])
    @user_group = UserGroup.new


  end



  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end




  def update
    @group = Group.find(params[:id])
   if @group.update_attributes(group_params)
      redirect_to :action => 'show', :id => @group
   else
      render :action => 'update'
   end
  end





  def destroy
    Group.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def group_params
    params.require(:group).permit(:name, :avatar, :status)
  end

end