class ListingsController < ApplicationController
  def index
    raise
    @listings = Listing.all

  end

  def show
    @listing = Listing.find()
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
