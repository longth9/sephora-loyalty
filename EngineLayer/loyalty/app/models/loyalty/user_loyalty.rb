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
      u.country_name = NetApi.country_name(u.country)
      u
    end

  end
end
