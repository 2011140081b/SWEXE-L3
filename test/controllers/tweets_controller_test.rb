require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweets_index_url
    assert_response :success
    validates :message, length:{maximum:140}
    validates :message, precedence: true
    
  end

end
