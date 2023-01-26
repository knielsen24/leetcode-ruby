# def find_kth_positive(arr, k)
#     all_nums = (1..2000).to_a
#     filtered = all_nums-arr
#     filtered[k-1]
# end

arr = [2,3,4,7,11]
k = 5



def find_kth_positive(arr, k)
    ((1..2000).to_a - arr)[k-1]
end
p find_kth_positive(arr, k)
