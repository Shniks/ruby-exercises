gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'
require_relative 'person'

class PersonTest < Minitest::Test

  def test_if_it_exists
    person = Person.new("Sergio")

    assert_instance_of Person, person
  end

  def test_if_person_is_not_stoned_by_default
    person = Person.new("Sergio")
    refute person.stoned?
  end

  def test_a_person_is_stoned_after_being_stared_at
    person = Person.new("Sergio")
    refute person.stoned?
    person.stared_at

    assert person.stoned?
  end

end
