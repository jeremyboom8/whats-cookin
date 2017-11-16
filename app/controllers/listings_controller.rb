class ListingsController < ApplicationController

  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index

    @search_term = params[:search]

    if @search_term == "" || @search_term.nil?
      @listings = Listing.where.not(latitude: nil, longitude: nil)
    else
      @listings = Listing.near(@search_term, 20)
    end
    @hash = Gmaps4rails.build_markers(@listings) do |listing, marker|
      marker.lat listing.latitude
      marker.lng listing.longitude
      marker.infowindow render_to_string(partial: "/listings/map_box", locals: { listing: listing })
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @listing.update(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :price, :photo)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
