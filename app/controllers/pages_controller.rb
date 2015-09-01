class PagesController < ApplicationController

  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    # @restaurants = Restaurant.all
    # authorize @restaurants
  end
end
