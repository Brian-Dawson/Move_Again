require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get buttons" do
    get welcome_buttons_url
    assert_response :success
  end

end
