require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test 'massageが空の時saveされないこと' do
    tweet = Tweet.new
    assert_not tweet.save
  end
  # test "the truth" do
  #   assert true
  # end
end
