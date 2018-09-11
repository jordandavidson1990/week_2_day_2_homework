class Bear

  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_to_stomach(fish)
    @stomach.push(fish)
  end

  def stomach_amount()
    return @stomach.length
  end

  def food_count
    return @stomach.length
  end

  def roar
    return "Roar!"
  end

  def pick_up_fish(fish)
    @stomach << fish
  end

  def pick_up_from_river(fish)
    @river.pick_up_fish(fish)
    @stomach.add_to_stomach(fish)
  end

  # def pick_up_from_river(name)
  #   for fish in name.queue()
  #     pick_up_fish(fish)
  #   end
  #   name.clear_queue()
  # end

end
