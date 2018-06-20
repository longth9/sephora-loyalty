require_dependency "loyalty/application_controller"

module Loyalty
  class UserLoyaltiesController < ApplicationController
    def index
      @loyalty = UserLoyalty.find_by_id(params[:id])
      loyalty_user = @loyalty.user
      country_name = loyalty_user.country_name
      @loyalty_user = loyalty_user.attributes.merge( country_name: country_name ).to_json
    end
  end
end
