
# Input: s = "PAYPALISHIRING", numRows = 4
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I
#

# 0    8
# 1   79
# 2  6 10
# 3 5  11 13
# 4    12


# r = [["p","a","y","p"], %w(0 a 0 0), %w(0 0 l 0), %w(i s h i), %w(n g 0 0)]
# p r.transpose

#  how do we find the number of columns
#  vertical col is one
#  next columns increase 2n -2

# 4 + 3
# 3 + 4
# 2 + 4

b = "ABC"
s = "PAYPALISHIRING"
num_rows = 4

def convert(s, num_rows)
    matrix = []
    num_rows.times {matrix.push([])}

    if num_rows === 1 || s.length <= 1
        matrix.push(s)
    elsif num_rows === 2
        s.split("").each.with_index do |char, i|
           i % 2 === 0 ? matrix[0].push(char) : matrix[1].push(char)
        end
    else
        row = 0
        char_count = 0
        max_char_count = 2*num_rows -2

        s.split("").each do |char|
            p row
            if char_count < num_rows
                matrix[row].push(char)
                char_count += 1
                if row < num_rows -1
                    row += 1
                end
            else
                row -=1
                matrix[row].push(char)
                char_count += 1
                if char_count === max_char_count
                    char_count = 0
                    row = 0
                end
            end
        end
    end
    p matrix
    matrix.flatten.join("")
end

p convert(s, num_rows)




# def find_rows(rows, len)
#     vert = len / rows

#     char_set = (2 * rows) -2
#     col_set = 1 + rows-2
#     group_set = len / char_set

#     diag = (rows-2) * group_set

#     remaining = len - (group_set * char_set)

#     if remaining / rows < 1
#         diag + vert
#     else
#         diag + vert + (remaining / rows)
#     end
# end
