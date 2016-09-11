require 'test_helper'

class ChordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chords_index_url
    assert_response :success
  end

end
