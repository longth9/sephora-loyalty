require "loyalty/engine"
require 'open-uri'

module Loyalty
  # Your code goes here...
  class NetApi
    def self.country_name(country_code)
      api_url = "https://restcountries.eu/rest/v2/alpha/#{country_code}"
      ctry_name = country_code
      begin
        response = open(api_url).read
        data = JSON.load(response)
        ctry_name = data["name"]
      rescue Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError,
          Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError => e
          logger.error("Failed to connecto to server.")
      end
      ctry_name
    end
  end
end
