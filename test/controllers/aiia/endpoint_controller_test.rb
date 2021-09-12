require "test_helper"

module Aiia
  class EndpointControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get splash" do
      get endpoint_splash_url
      assert_response :success
    end

    test "should get webhook" do
      get endpoint_webhook_url
      assert_response :success
    end

    test "should get callback" do
      get endpoint_callback_url
      assert_response :success
    end
  end
end
