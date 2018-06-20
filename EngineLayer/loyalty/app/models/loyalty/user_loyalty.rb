module Loyalty
  class UserLoyalty < ApplicationRecord

    DB_STATS = YAML::load(ERB.new(File.read(Rails.root.join("config","database.yml"))).result)[Rails.env]

    establish_connection DB_STATS
    
    self.abstract_class = true

    self.table_name = "public.loyaltee_accounts"
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
