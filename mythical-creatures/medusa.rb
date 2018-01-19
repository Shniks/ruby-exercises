class Medusa

  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    statues << victim
  end

end
