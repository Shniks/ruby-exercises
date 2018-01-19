class Pirate

  attr_reader :name,
              :job,
              :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @count = 0
    @booty = 0
  end

  def cursed?
    return true if @count >= 3
    false
  end

  def commit_heinous_act
    @count += 1
  end

  def rob_ship
    true
    @booty += 100
  end

end
