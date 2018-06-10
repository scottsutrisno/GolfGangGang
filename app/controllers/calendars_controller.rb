class CalendarsController < ApplicationController
  # before_action :authenticate_user!
  def index
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=91007,us&units=imperial&appid=#{ENV['WEATHER']}")

    @users = User.all
  end

  def new
  end

def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
