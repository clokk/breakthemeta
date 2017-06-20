require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bulletins_show_url
    assert_response :success
  end

  test "should get new" do
    get bulletins_new_url
    assert_response :success
  end

  test "should get edit" do
    get bulletins_edit_url
    assert_response :success
  end

end
