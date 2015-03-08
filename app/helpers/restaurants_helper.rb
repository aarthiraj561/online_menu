module RestaurantsHelper
  def get_greet_message(restaurant_name)
    t = Time.now.hour
    greet = case
    when t < 12
      "Good Morning!"
    when (12..15) === t
      "Good Afternoon!"
    when t > 15
      "Good Evening!"
    else
      "Hello!"
    end
    greet + " Welcome to #{restaurant_name} online menu/location search."
  end
end
