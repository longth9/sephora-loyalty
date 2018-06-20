# require './test/test_helper'

# class UserTest < ActiveSupport::TestCase
#     fixtures :users

#     test "should save new user" do
#       one_user = User.new :loyalty_id => users(:one).loyalty_id,
#                       :first_name => users(:one).first_name, 
#                       :last_name => users(:one).last_name,
#                       :email => users(:one).email,
#                       :gender => users(:one).gender,
#                       :age => users(:one).age

#       assert one_user.save

#       one_user.gender = "female"

#       assert one_user.save
#       assert one_user.destroy
#     end

#     test "should update gender" do

#       one_user = User.find(users(:one).id)

#       one_user.gender = "female"

#       assert one_user.save
#       assert one_user.destroy
#     end

# end
