class CalendarsController < ApplicationController
  def index
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=91007,us&appid=#{ENV['WEATHER']}")
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
