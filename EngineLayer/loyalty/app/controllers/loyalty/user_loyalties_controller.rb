require_dependency "loyalty/application_controller"

module Loyalty
  class UserLoyaltiesController < ApplicationController
    def index
      @loyalty = UserLoyalty.find_by_id(params[:id]) 
      country_name = @loyalty.user.country_name
      @loyalty_user = @loyalty.user.attributes.merge( country_name: country_name ).to_json
    end
  end
end
