# start in bottom left corner in the fist col
# as row decreases insert index to new row.
# once row is completed then push into array
# reset row to empty
# increase col

# swap row with col
# newRow = length - row
# 123,456,789
# swap last index with first
# 321,456,789
# 341,256,789
# 741,256,389
#
# 741,652,389
# 741,852,369
#
# 741,852,963

def rotate(matrix)

    p newArray = matrix.flatten.rotate(matrix[0].size)




    matrix
end

matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
matrix2 = [[1,2,3],[4,5,6],[7,8,9]]

p rotate(matrix2)


# def rotate(matrix)
#     col = 0
#     row = (matrix.size) -1
#     newRow = []
#     newMatrix = []

#     while col < matrix.size
#         if row >= 0
#             newRow << matrix[row][col]
#             row -= 1
#             if row == -1
#                 newMatrix << newRow
#                 p newMatrix
#                 newRow = []
#                 row = (matrix.size) -1
#                 col += 1
#             end
#         end
#     end
#     newMatrix
# end

# while row < matrix.size

    #     matrix[row][col], matrix[row][max] = matrix[row][max], matrix[row][col]

    #     if row != max
    #         matrix[row][col + 1], matrix[row + 1][col] = matrix[row + 1][col], matrix[row][col + 1]
    #     end


    #     matrix[row][col], matrix[max][col] = matrix[max][col], matrix[row][col]


    #     row += 1
    #     p matrix
    #     p "new row #{row}"
    # end
