require 'test_helper'

class RandomUserControllerTest < ActionDispatch::IntegrationTest
  Include Devise::Test::IntegrationHelpers
  test "should get new" do
    get random_user_new_url
    assert_response :redirect
  end

  test 'an authenticated user should get success' do
    User.create()
    sign_in users(:one)
    get random_user_new_url
    assert_response :success
  end

end
