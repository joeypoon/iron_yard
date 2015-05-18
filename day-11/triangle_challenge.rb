require 'minitest/autorun'

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a,b,c)
  if a == b && a == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end
end

# def triangle(a, b, c)
#   equal_sides = 0
#   equal_sides += 1 if a == b
#   equal_sides += 1 if a == c
#   equal_sides += 1 if b == c
#   equal_sides += 1 if equal_sides == 1
#   triangles = [:scalene, "Not a triangle", :isosceles, :equilateral]
#   triangles[equal_sides]
# end

class TriangleTest < Minitest::Test

  def test_is_equilateral
    assert_equal :equilateral, triangle(5,5,5)
  end

  def test_is_isosceles
    assert_equal :isosceles, triangle(5,5,7)
  end

  def test_is_scalene
    assert_equal :scalene, triangle(5,6,7)
  end
end
