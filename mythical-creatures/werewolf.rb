class Werewolf

  attr_reader     :name,
                  :location

  def initialize(name, location = "london")
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end

  def change!
    @human = !@human
  end

  def wolf?
    !human?
  end

  def hungry?
    wolf?
  end

end
