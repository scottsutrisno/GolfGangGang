class CalendarsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @calendars = Calendar.where(:group_id => current_user.groups.ids)
    @users = User.all
    @groups = Group.all
  end

  def new
    @calendar = Calendar.new
    @users = User.all
    @groups = Group.all

  end

def show
    @calendar = Calendar.find(params[:id])
    @groups = Group.all
    @users = Group.find(@calendar.group_id).users
  end

  def create
       @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end


  def edit
    @calendar = Calendar.find(params[:id])
    @calendars = Calendar.all
    @users = User.all

  end



  def update
    @calendar = Calendar.find(params[:id])
    if @calendar.update_attributes(calendar_params)
        redirect_to :action => 'show', :id => @calendar
    else
        render :action => 'update'
    end
  end

  def destroy
    Calendar.find(params[:id]).destroy
    redirect_to :action => 'index'
  end


  private

  def calendar_params
    params.require(:calendar).permit(:name, :start_time, :end_time, :comment, :group_id, :user_id)
  end

end