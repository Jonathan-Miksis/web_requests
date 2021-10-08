require 'http'

def forecast(input_city)
  city = input_city
  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")
  p response.parse(:json)["main"]["temp_min"]
  p response.parse(:json)["main"]["temp_max"]
  p response.parse(:json)["weather"][0]["description"]
  p response.parse(:json)["wind"]["speed"]
end

p "Please give me a city you'd like to see the weather in"
city = gets.chomp

p "If you would like to see the forecast, please put F. If you would like to "
input = gets.chomp

if gets.chomp == "F"
  forecast(city)
end
