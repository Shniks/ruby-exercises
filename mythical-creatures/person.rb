class Person

  attr_reader     :name,
                  :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end

  def person_is_stoned
    @stoned = true
  end

  def person_is_unstoned
    @stoned = false
  end

end
