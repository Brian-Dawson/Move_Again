require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get button1" do
    get say_button1_url
    assert_response :success
  end

  test "should get button2" do
    get say_button2_url
    assert_response :success
  end

  test "should get button3" do
    get say_button3_url
    assert_response :success
  end

end
