require_relative 'medusa'

class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def stoned?
    require 'pry'; binding.pry 
    return false if @statues.count == 0
    true
  end

end
