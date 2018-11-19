require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get area" do
    get category_area_url
    assert_response :success
  end

end
