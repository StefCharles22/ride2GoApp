class TripsController < ApplicationController
before_action :authenticate_user!
ActionController::Parameters.permit_all_parameters = true


    def index
      @trips = Trip.all
      @users = User.all

    end

    def new
      @trip = Trip.new
    end


    # create form to render new date
    def create

      @user = User.find(current_user.id)
      # puts "user", @user
      @trip = Trip.new(trip_params)
      @trip.save


        if (@trip)
          redirect_to url_for(:controller => :trips, :action => :index)
        else
          redirect_to url_for(:controller => :trips, :action => :new)
        end
    end




    def show
      @trip = Trip.find(params[:id])
      @creator = @trip.creator
      @riders_arr = @trip.riders
    end


    def send_request
      puts "PROCESSING REQUEST!"
      #1- send sendgrid email


      #2- Create new row in the Trips/Rider join table
      # Add rider to this trip
      @trip = Trip.find(params[:trip_id])
      @trip.riders << User.find(params[:current_user_id])
      # to do: set status to "pending"
      # @trip.riders.last

    end




    def edit
      @message = "this is my edit page"
      @trip = Trip.find(params[:id])
    end

    def update
      @trip = Trip.find(params[:id])
      @trip.update({
        origin: params[:trip][:origin],
        destination: params[:trip][:destination],
        month: params[:trip][:month],
        date: params[:trip][:date],
        time: params[:trip][:time]
        })

        if(@trip)
          redirect_to url_for(:controller => :trips, :action => :show)
        else
          redirect_to url_for(:controller => :trips, :action => :edit)
        end
    end

    def destroy
      Trip.delete(params[:id])
      redirect_to url_for(:controller => :trips, :action => :index )
    end


    private
    def trip_params
      params.require(:trip).permit(:origin, :destination, :month, :date, :time, :creator_id)

    end
end
