def peak_index_in_mountain_array(arr)
    arr.index(arr.max)
end

arr1 = [0,2,1,0]
arr2 = [0,10,15,20,14]

p peak_index_in_mountain_array(arr2)


# def peak_index_in_mountain_array(arr)
#     left = 0
#     right = (arr.size) -1
#     mid = (left + right)/2

#     while left < mid && mid < right
#         if arr[mid - 1] < arr[mid] && arr[mid] < arr[mid + 1]
#             left = mid
#         elsif arr[mid - 1] > arr[mid] && arr[mid] > arr[mid + 1]
#             right = mid
#         else return mid
#         end
#         mid = (left + right)/2
#     end

# end
