class Wizard

  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @count = 0
  end

  def bearded?
    return false if @bearded == false
    true
  end

  def incantation(data)
    "sudo #{data}"
  end

  def rested?
    return false if @count >= 3
    true
  end

  def cast
    @count += 1
    "MAGIC MISSILE!"
  end

end
