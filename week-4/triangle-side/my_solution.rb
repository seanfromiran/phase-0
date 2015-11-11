# I worked on this challenge with Jonathan Huang.


# Your Solution Below

def valid_triangle?(a, b, c)
  triangle = [a, b, c]
  if a > b
    triangle[0] = b
    triangle[1] = a
  end
  if triangle[1] > triangle[2]
    triangle[2] = triangle[1]
    triangle[1] = c
  end
  if triangle[0] > triangle[1]
    temp = triangle[0]
    triangle[0] = triangle[1]
    triangle[1] = temp
  end

  #triangle.permutation.to_a.sort { |x, y| x.to_f <=> y.to_f }

  if (triangle[0] + triangle[1]) > triangle[2]
    return true
  else
    return false
  end

end