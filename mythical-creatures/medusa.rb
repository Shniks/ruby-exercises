class Medusa

  attr_reader   :name,
                :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues << victim
  end

end
