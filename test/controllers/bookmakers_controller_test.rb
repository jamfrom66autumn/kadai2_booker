require 'test_helper'

class BookmakersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookmakers_new_url
    assert_response :success
  end

end
