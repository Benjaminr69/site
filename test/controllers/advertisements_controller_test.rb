require 'test_helper'

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advertisements_index_url
    assert_response :success
  end

end
