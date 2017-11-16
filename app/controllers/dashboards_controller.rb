class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @bookings = current_user.bookings
    @listings = current_user.listings
  end
end
