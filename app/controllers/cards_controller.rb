class CardsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def set_time
    @month = Month.all
    @year = Year.all
  end
end
