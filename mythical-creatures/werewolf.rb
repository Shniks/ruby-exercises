class Werewolf

  attr_reader     :name,
                  :location

  def initialize(name, location = "london")
    @name = name
    @location = location
    @human = true
    @wolf = true
    @count = 0
  end

  def human?
    @human
  end

  def change!
    @count += 1
    return @human = false if @count == 1
    @human = true
  end

  def wolf?
    @wolf
  end

end
