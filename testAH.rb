require "faraday"
require "json"

blizzard_api_key = File.read("blizzkey.txt")
server = "stormrage"
locale = "us"
post_locale = "en_US"
blizz_api_url = "https://#{locale}.api.battle.net"
ah_location = "/wow/auction/data/"
full_location = ah_location + server + "?locale=" + post_locale + "&apikey=" + blizzard_api_key

conn = Faraday.new(:url => blizz_api_url) do |faraday|
    faraday.request :url_encoded
    faraday.adapter Faraday.default_adapter
end
    
response = conn.get full_location

response_json = JSON.parse(response.body)

ah_file_location = response_json["files"][0]["url"]
puts ah_file_location
last_modified = response_json["files"][0]["lastModified"]

ah_data = Faraday.get ah_file_location

#puts ah_data.body
