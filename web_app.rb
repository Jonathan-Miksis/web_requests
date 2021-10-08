require 'http'

p "Please enter a city and I'll give you the current weather"
city = gets.chomp

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
min_temp = response.parse(:json)["main"]["temp_min"]
max_temp = response.parse(:json)["main"]["temp_max"]
conditions = response.parse(:json)["weather"][0]["description"]
wind_speed = response.parse(:json)["wind"]["speed"]

p "The weather in #{city} has a low of #{min_temp} and high of #{max_temp}. The conditions are #{conditions} with a a wind speed of #{wind_speed}."
