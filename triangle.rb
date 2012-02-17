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
  fail TriangleError unless valid(a, b, c)

  result = :scalene

  result = :isosceles if a == b || b == c || a == c
  result = :equilateral if a == b && b == c

  result
end

private

def valid(a, b, c)
  a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
