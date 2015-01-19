require 'test_helper'

class FizzbuzzControllerTest < ActionController::TestCase
  test "should get run" do
    get :run
    assert_response :success
  end

  test "valid json" do
    get :run, :format => :json
    fbj = JSON.parse(response.body)
    assert_equal fbj.size, 100
  end

end
