class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def fish_count()
    return @fish_count.length()
  end

  def add_fish(new_fish)
    @fish_count << new_fish
  end

  def lose_fish()
    @fish_count.pop()
  end
end
