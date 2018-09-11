# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
#
# A fish should have a name
#
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
#
# A bear should have an empty stomach ( maybe an array )
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish



require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Jill")
    @fish3 = Fish.new("Jim")
    @fish4 = Fish.new("Janet")
  end

  def test_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach_starts_empty
    assert_equal(0, @bear.stomach_amount)
  end

  def test_food_count
    @bear.pick_up_fish(@fish1)
    assert_equal(1, @bear.food_count)

  end
  def test_add_fish_to_bear
    @bear.pick_up_fish(@fish1)
    assert_equal(1, @bear.stomach_amount())
  end

  # def test_take_fish_from_river
  #   # @river.add_to_stomach(@fish1)
  #   # @river.pick_up_from_river(@fish1)
  #   add_to_stomach(@fish1)
  #   assert_equal(@bear.stomach_amount(), 1)
  # end

  def test_roar
    assert_equal(@bear.roar, "Roar!")
  end
  def test_pick_up_from_river
    @river = River.new("Amazon")
    @river.add_fish(@fish1)
    @bear.add_to_stomach(@river)
    @river.lose_fish()
    assert_equal(1, @bear.stomach_amount())
    assert_equal(0, @river.fish_count())
  end

end
