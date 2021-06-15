require "test_helper"
require 'byebug'
class RealEstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_estate = real_estates(:one)
  end

  test "should get index" do
    get "/real_estates"
    assert_response :success
  end

  test "should create real_estate" do
    assert_difference('RealEstate.count') do
      post "/real_estates", params: { real_estate: {
        "name": "New Row Cental Park",
        "type": "department",
        "street": "Avenue Street",
        "external_number": "4498",
        "internal_number": "125",
        "neighborhood": "Nort Park",
        "city": "NY",
        "country": "US",
        "rooms": 2,
        "bathrooms": 2,
        "comments": "Sold"
      } }
    end

    assert_response :success
  end

  test "should show real_estate" do
    # byebug
    get "/real_estates/1"
    assert_response :success
  end

  test "should update real_estate" do
    patch real_estate_url(@real_estate), params: { real_estate: {"name": "Central Park Update Name" } }
    assert_response :success
  end

  test "should destroy real_estate" do
    assert_difference('RealEstate.count', -1) do
      delete "/real_estates/1"
    end

    assert_response :success
  end
end
