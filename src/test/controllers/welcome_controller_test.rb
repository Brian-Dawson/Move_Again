require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get starting" do
    get welcome_starting_url
    assert_response :success
  end

end
