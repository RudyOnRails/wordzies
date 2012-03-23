require 'test_helper'

class LandingsControllerTest < ActionController::TestCase
  test "should get annie1" do
    get :annie1
    assert_response :success
  end

end
