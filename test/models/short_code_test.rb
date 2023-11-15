require "test_helper"

class ShortCodeTest < ActiveSupport::TestCase
  test "encode 0" do
    assert_equal "0", ShortCode.encode(0)
  end

  test "encode 1" do
    assert_equal "1", ShortCode.encode(1)
  end

  test "encode 10" do
    assert_equal "a", ShortCode.encode(10)
  end

  test "encode 1024" do
    assert_equal "gw", ShortCode.encode(1024)
  end
end