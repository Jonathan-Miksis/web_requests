# require 'http'

# response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

# p response.parse(:json)

require 'http'

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=boston&appid=#{ENV["OPEN_WEATHER_API_KEY"]}")

p response.parse(:json)
