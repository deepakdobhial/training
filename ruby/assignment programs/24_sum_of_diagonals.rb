# Write a function which takes square matrix mat, return the sum of the matrix diagonals. 
# Only include the sum of all the elements on the primary diagonal and all the elements on the secondary 
# diagonal that are not part of the primary diagonal.

def sum_of_diagonals(mat)
  primary_diag_sum = 0
  secondary_diag_sum = 0
  for i in 0...mat.length
    for j in 0...mat[i].length
      if i == j 
        primary_diag_sum += mat[i][j]
      elsif j == (mat[i].length) - (i + 1)
        secondary_diag_sum += mat[i][j]
      end
    end
  end
  
  return (primary_diag_sum + secondary_diag_sum)
end

#----------------------------main---------------------------------
mat = [[1, 2, 3], [5, 6, 7], [9, 10, 11]]
puts "sum of matrix diagonals : #{ sum_of_diagonals(mat) }"

#----------------------------Output---------------------------------
=begin 
sum of matrix diagonals : 30

=end
