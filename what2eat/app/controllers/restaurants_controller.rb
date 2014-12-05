class RestaurantsController < ApplicationController
  # rescue_from RestaurantsController::UNAVAILABLE_FOR_LOCATION, with: :unavailable_location
  # GET /restaurants
  # GET /restaurants.json
  # def unavailable_location
  #     render plain: "404 Not Found", status: 404
  # end


  def index
    @restaurants = Restaurant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurants }
    end
  end

  def search
    @address = params[:place]['address']

    # set default address
    if @address.length == 0
      flash[:warning] = "Invalid input. Please type in an address"
      redirect_to restaurants_path
    else
      parameters = {  limit: 10,
                      term: 'restaurants, food',
                      sort: 2,
                      radius_filter: 1600
                   }

      locale = { cc: 'US' }
      begin
        @results = Yelp.client.search(@address, parameters, locale)
      rescue
        flash[:warning] = "Invalid address. Please type in an valid address"
        redirect_to restaurants_path
      end
    end
  end
end
