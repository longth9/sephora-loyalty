require './test/test_helper'

class LandingControllerTest < ActionController::TestCase
   def test_index
      get :index
   end
end