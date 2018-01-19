class Hobbit

  attr_reader :name,
              :disposition

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @count = 0
  end

  def celebrate_birthday
    @count += 1
  end

  def age
    @count
  end

  def adult?
    true if @count > 32
  end

  def old?
    true if @count >= 101
  end

  def has_ring?(name)
    return true if name == 'Frodo'
    false
  end

  def is_short?
    true
  end

end
