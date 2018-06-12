class CalendarsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=91007,us&units=imperial&appid=#{ENV['WEATHER']}")
    @calendars = Calendar.all
    @users = User.all
  end

  def new
    @calendar = Calendar.new
    @users = User.all
  end

def show
      @calendar = Calendar.find(params[:id])
    @users = User.all
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
    @calendar = Group.find(params[:id])
    # @user_group = UserGroup.new
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
    params.require(:calendar).permit(:name, :start_time, :end_time)
  end

end