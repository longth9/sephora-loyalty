require './test/test_helper'

class LoyaltyTest < ActiveSupport::TestCase
    fixtures :users

    test "Test loyalty is found" do
      lt = Loyalty::UserLoyalty.find(1)
      assert lt
      # lt.user
      # users(:one).email
    end

    test "Test loyalty has user" do
      lt = Loyalty::UserLoyalty.find(1)
      assert_equal( users(:one).email, lt.user.email , "email is not match" )
    end
    #
    test "Test loyalty has country name" do
      lt = Loyalty::UserLoyalty.find(1)
      assert_equal( "Cook Islands", lt.user.country_name , "country name is not match" )
      # 
    end
end
