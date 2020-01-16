require 'test_helper'

class EquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get equipments_search_url
    assert_response :success
  end

end
