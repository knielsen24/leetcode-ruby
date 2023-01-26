
def kth_smallest(matrix, k)
    matrix.flatten.sort[k-1]
end

matrix = [[1,5,9],[10,11,13],[12,13,15]]
k = 8

kth_smallest(matrix, k)
