require 'date'

# Day 17 - Dynamic Pages in Rails
# =============
#
# Challenge
# ------
#
# Assuming a person has a first name, last name, email, date of birth, please
# create a class that:
#
# 1. Allows you to set the first name, last name, email, and DOB in an initializer
# 1. Allows you to call `.age` and return the age of the person
# 1. Allows you to call `full_name` and return the 'Last, First' name

class Person

  def initialize first_name, last_name, dob, email
    @first_name = first_name
    @last_name = last_name
    @dob = Date.parse(dob)
    @email = email
  end

  def age
    today = Date.today
    if today.month == @dob.month && today.mday < @dob.mday
      today.year - @dob.year - 1
    elsif today.month < @dob.month
      today.year - @dob.year - 1
    else
      today.year - @dob.year
    end
  end

  def full_name
    "#{@last_name.capitalize}, #{@first_name.capitalize}"
  end

end
