class Bag

  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    true if candies.empty?
  end

  def << candy
    candies << candy
  end

  def count
    count = candies.count
  end

  def contains?(type)
    candies.any? do |candy|
      candy.type == type
    end
  end

end
