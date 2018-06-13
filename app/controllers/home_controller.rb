class HomeController < ApplicationController
  def index
    if !user_signed_in?
    redirect_to new_user_session_path
    end
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=10023,us&units=imperial&appid=#{ENV['WEATHER']}")

  end

  def new
  end

  def show
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?zip=10023,us&units=imperial&appid=#{ENV['WEATHER']}")
  end

  def create
  end

  def update
  end

  def destroy
  end


end
