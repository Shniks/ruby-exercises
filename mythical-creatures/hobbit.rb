class Hobbit

  attr_reader :name,
              :disposition,
              :count

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @count = 0
    @short = true
  end

  def celebrate_birthday
    @count += 1
  end

  def age
    count
  end

  def adult?
    return true if count > 32
  end

  def old?
    return true if count >= 101
  end

  def has_ring?(name)
    return true if name == 'Frodo'
    false
  end

  def is_short?
    @short
  end

end
