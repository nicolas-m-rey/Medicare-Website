require "test_helper"

class MedicareWebsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicare_website = medicare_websites(:one)
  end

  test "should get index" do
    get medicare_websites_url
    assert_response :success
  end

  test "should get new" do
    get new_medicare_website_url
    assert_response :success
  end

  test "should create medicare_website" do
    assert_difference('MedicareWebsite.count') do
      post medicare_websites_url, params: { medicare_website: {  } }
    end

    assert_redirected_to medicare_website_url(MedicareWebsite.last)
  end

  test "should show medicare_website" do
    get medicare_website_url(@medicare_website)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicare_website_url(@medicare_website)
    assert_response :success
  end

  test "should update medicare_website" do
    patch medicare_website_url(@medicare_website), params: { medicare_website: {  } }
    assert_redirected_to medicare_website_url(@medicare_website)
  end

  test "should destroy medicare_website" do
    assert_difference('MedicareWebsite.count', -1) do
      delete medicare_website_url(@medicare_website)
    end

    assert_redirected_to medicare_websites_url
  end
end
