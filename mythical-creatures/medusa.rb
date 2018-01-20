class Medusa

  attr_reader   :name,
                :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if statues.count >= 3
      first_victim = statues.shift
      first_victim.person_is_unstoned
    end
    victim.person_is_stoned
    statues << victim
  end

end
