require 'test_helper'

class V1::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get v1_categories_show_url
    assert_response :success
  end

end
