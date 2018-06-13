class UserCalendarsController < ApplicationController
  def edit
    @user_calendar = UserCalendar.find(params[:id])
  end

  def update
    @user_calendar = UserCalendar.find(params[:id])

   if @user_calendar.update_attributes(user_calendar_params)
      redirect_to calendar_url
   else
      render :action => 'edit'
   end
  end

  def create
    @user_calendar = UserCalendar.new(user_calendar_params)

    if @user_calendar.save
      redirect_to calendar_url
    else
      render :action => 'new'
    end
  end

  def destroy
    UserCalendar.find(params[:id]).destroy
    redirect_to calendar_url
  end

private

  def user_calendar_params
    params.require(:user_group).permit(:user_id, :calendar_id)
  end


end