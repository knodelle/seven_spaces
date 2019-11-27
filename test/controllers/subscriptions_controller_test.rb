require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get subscriptions_show_url
    assert_response :success
  end

  test "should get update" do
    get subscriptions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get subscriptions_destroy_url
    assert_response :success
  end

end
