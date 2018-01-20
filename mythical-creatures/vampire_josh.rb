class Vampire

  attr_reader :name,
              :pet

  def initialize(*args)
    @name = args[0]
    @pet = args[1] || "bat"
    @thirsty = true
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end

end
