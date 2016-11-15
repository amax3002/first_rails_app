require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get "/"
    assert_response :success
  end

  test "should get unique message" do
    get "/Alex"
    assert_response :success
    assert_match(/Alex/, response.body)
  end

  test "should get lorium" do
    get "/lorium/standard"
    assert_response :success
    assert_match(/consectetur adipiscing/, response.body)
  end
end
