module Loyalty
  class UserLoyalty < ApplicationRecord
    establish_connection(
      {
          :adapter => 'postgresql',
          :database => 'loyaltydb',
          :host => 'localhost',
          :username => 'loyalty',
          :password => "" 
      })


    self.table_name = "loyaltee_accounts"
    self.primary_key = "id"

    def user
      u = User.where(loyalty_id: self.id).first
      class << u
        attr_accessor :country_name
      end
      country_code = u.country
      cache_key = "country_name/#{country_code}"
      country_name = Rails.cache.fetch(cache_key, expires_in: 24.hours) do
        NetApi.country_name(country_code)
      end
      u.country_name = country_name
      u
    end

  end
end
