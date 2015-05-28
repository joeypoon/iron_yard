require 'minitest/autorun'
require 'minitest/pride'
require './person'

class PersonTest < MiniTest::Test

  def test_full_name
    p = Person.new("jesse", "wolgamott", "1978-08-24", "jwo@example.com")
    assert_equal "Wolgamott, Jesse", p.full_name
  end

  def test_age
    p = Person.new("jesse", "wolgamott", "1978-08-24", "jwo@example.com")
    assert_equal 36, p.age
  end
end
