require 'test_helper'

class My::SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_subscriptions_new_url
    assert_response :success
  end

  test "should get create" do
    get my_subscriptions_create_url
    assert_response :success
  end

end
