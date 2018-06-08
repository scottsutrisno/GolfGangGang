class HomeController < ApplicationController
  def index
    if !user_signed_in?
    redirect_to new_user_session_path
    end
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
