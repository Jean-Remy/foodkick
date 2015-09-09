module UsersHelper

  def pref_array
    array_borough = @user.borough_prefs
    Restaurant.all.each do |restaurant|

    end


  end

  def check_cat
    array = []
      array << "italian" if @user.italian == true
      array << "français" if @user.italian == true

  end

end
