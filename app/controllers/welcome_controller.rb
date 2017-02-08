class WelcomeController < ApplicationController


  # from route route test message bellow
  def home
    @welcome = "welcome to your trip planner"
    @trips = Trip.all
    puts @trips


  end

  def index
    @trips = Trip.all
  end

end
