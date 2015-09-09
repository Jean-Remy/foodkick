module RestaurantsHelper
  def index_home_category(italian, french, viet, thai, japanese, bastille, notre_dame, marais, villette, abbesses)
    cat_coll = [italian, french, viet, thai, japanese]
    borough_coll = [bastille, notre_dame, marais, villette, abbesses]

    result = Restaurants.where(category: collection )


  end

  def month_translator(month)
  return "Janvier" if month == 1
  return "Février" if month == 2
  return "Mars" if month == 3
  return "Avril" if month == 4
  return "Mai" if month == 5
  return "Juin" if month == 6
  return "Juillet" if month == 7
  return "Août" if month == 8
  return "Septembre" if month == 9
  return "Octobre" if month == 10
  return "Novembre" if month == 11
  return "Décembre" if month == 12
end
end
