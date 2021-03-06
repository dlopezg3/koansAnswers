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
def triangle(a, b, c)
  if [a, b, c].include?(0)
     raise TriangleError, "The sides can't be 0"
  elsif a < 0 || b < 0 || c < 0
     raise TriangleError, "The sides can't be negative numbers"
  elsif (a == b && a + b <= c) || (a == c && a + c <= b) || (b == c && b + c <= a)
     raise TriangleError, "Any two sides of a triangle should add up to more than the third side."
  elsif a == b && a == c
    :equilateral
  elsif a==b || a==c || b==c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
