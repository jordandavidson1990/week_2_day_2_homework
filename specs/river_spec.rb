require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')
# require_relative('../fish')

class RiverTest < Minitest::Test
  # A river should have a name e.g. "Amazon"
  def setup()
    @river = River.new("Amazon")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Jill")
    # A river should hold many fish
    @fish = []

  end
  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_river_name
    assert_equal(@river.name, "Amazon")
  end

  def test_how_many_fish_in_river
    assert_equal(@river.fish_count, 0)
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_lose_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.lose_fish()
    assert_equal(1, @river.fish_count())
  end
end
