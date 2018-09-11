require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < Minitest::Test
  def setup
    @fish = Fish.new("John")
  end

def test_can_create_fish()
  assert_equal(Fish, @fish.class())
end

  def test_fish_name()
    assert_equal(@fish.name, "John")
  end
end
