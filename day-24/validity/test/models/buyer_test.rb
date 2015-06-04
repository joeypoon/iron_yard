require 'test_helper'

class BuyerTest < ActiveSupport::TestCase

  test "can buy alcohol if 21" do
    assert buyer(22.years).alcohol?, "should be able to buy alcohol"
  end

  test "cannot buy alcohol if 20" do
    refute buyer(20.years).alcohol?, "should not be able to buy alcohol"
  end

  test "can buy tobacco if 18" do
    assert buyer(18.years).tobacco?, "should be able to buy tobacoo"
  end

  test "cannot buy tobacco if 17" do
    refute buyer(17.years).tobacco?, "should not be able to buy tobacoo"
  end

  test "can vote if 18" do
    assert buyer(18.years).vote?, "should be able to vote (but likely won't)"
  end

  test "cannot vote if 16" do
    refute buyer(16.years).vote?, "can't vote yet"
  end


  def buyer(age)
    Buyer.new(date_of_birth: age.ago)
  end


end
