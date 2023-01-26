# Input: nums = [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]
arr1 = [1,3,5,7]
arr2 = [2,4,6,8,10]

# def swap(arr, idx1, idx2)
#     arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
# end

# nums = [2,0,2,1,1,0]
# p sort_colors(nums)

# def sort_colors(nums)
#     i = nums.size
#     loop do
#         i -= 1
#         p i
#         break if i == 0
#         if nums
#     end

# end



def merge(arr1, arr2)
    merged = []
    i = 0
    j = 0

    while i < arr1.size && j < arr2.size
        if arr1[i] < arr2[j]
            merged << arr1[i]
            i += 1
        else
            merged << arr2[j]
            j += 1
        end
    end

    while i < arr1.size
        merged << arr1[i]
        i += 1
    end

    while j < arr2.size
        merged << arr2[j]
        j += 1
    end

    merged
end

def sort_colors(nums)
    return nums if nums.size <= 1
    mid = (nums.size)/2
    right = sort_colors(nums.slice(0,mid))
    left = sort_colors(nums.slice(mid, nums.size))
    merge(left, right)
end

nums = [2,0,2,1,1,0]
p sort_colors(nums)
