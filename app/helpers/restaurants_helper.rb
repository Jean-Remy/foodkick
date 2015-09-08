module RestaurantsHelper
  def index_home_category(italian, french, viet, thai, japanese, bastille, notre_dame, marais, villette, abbesses)
    cat_coll = [italian, french, viet, thai, japanese]
    borough_coll = [bastille, notre_dame, marais, villette, abbesses]

    result = Restaurants.where(category: collection )


  end
end
