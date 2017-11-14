class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = Listing.find(params[:listing_id])
    if @booking.save
      redirect_to listing_path(Listing.find(params[:listing_id])) # TODO: Redirect this to the dashboard after Dashboard created
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end

end
