class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :design_test]

  def home
  end

  def design_test
  end
end
