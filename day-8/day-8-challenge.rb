# Day 8 - FizzBuzz, pop/shift
# Quiz: Palindrome
#
# Write a method that tests if a word is a palindrome Example of a palindrome: "abba" Not a palindrom: "dog"
# "abba".palindrome?
# => true
#
# "dog".palindrome?
# => false

class String
  def palindrome?
    self == self.reverse
  end
end

puts "string".palindrome? # false
puts "abba".palindrome? # true

# Quiz 2: fizzbuzz
#
# Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".
# Checking if a number is divisible by another is called modulo.
# So 4 is divisible by 2 because 4 % 2 has no remainder
# 4 % 2 == 0 or 4.modulo(2) == 0
# if 20 % 5
#   puts "yup"
# else
#   puts "nay"
# end
# 
# def fizzbuzz
#   i = 1
#   while i <= 100
#     if i % 3 == 0 && i % 5 == 0
#       puts "FizzBuzz"
#     elsif i % 5 == 0
#       puts "Buzz"
#     elsif i % 3 == 0
#       puts "Fizz"
#     else
#       puts i
#     end
#     i += 1
#   end
# end

def fizzbuzz
  (1..100).each do |number|
    if number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    elsif number % 5 == 0
      puts "Buzz"
    elsif number % 3 == 0
      puts "Fizz"
    else
      puts number
    end
  end
end

fizzbuzz
