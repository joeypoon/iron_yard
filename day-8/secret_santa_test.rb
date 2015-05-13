require 'minitest/autorun'
require './day-8'

class SecretSantaTest < Minitest::Test
  def setup
    @secret_santa = SecretSanta.new("text.txt")
  end

  def test_loads_file
    assert_equal true, @secret_santa.people.any?
  end

  def test_people_have_santa
    @secret_santa.pick_person
    @secret_santa.people.each do |person|
      assert_equal true, person.santa_for.class == Person
    end
  end

  def test_not_own_santa
    @secret_santa.pick_person
    @secret_santa.people.each do |person|
      assert_equal false, person.first_name == person.santa_for.first_name
    end
  end
end
