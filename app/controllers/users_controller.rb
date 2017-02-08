class UsersController < ApplicationController


  before_action :authenticate_user!
  #    strictly requires user to sing in or sign up before user is routed to show page

  # return array of all users
  def index
    @all_users = User.all
  end

  def new
    @rider = User.new
  end

  before_action :authenticate_user!

  # match current_user fave by users/:id/
  def show
    @user = User.find(params[:id])
    # @trips = Trip.find(params[:creator_id])
    # puts "ALLO", @trips
  end




  def edit
  end


  def update
  end

  def destroy
  end




end
