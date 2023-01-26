# compare mid with the left and right.
# if the left if greater than the mid, then the min is on the left side
#   change the right to mid -1, then re adjust the mid point
# otherwise the min is on the right side
#   adjust the left and
#

nums = [3,4,5,-5,2]
nums2 = [4,5,6,7,0,1,2]
nums3 = [11,13,15,17]
nums4 = [4,1,2,3]

# def find_min(nums)
#     len = nums.length
#     right = len-1
#     left = 0
#     return nums[left] if nums[left] < nums[right]

#     loop do
#         mid = (left + right) / 2
#         nums[mid] < nums[left] ? right = mid : left = mid
#         break if nums[left] < nums[right]
#     end

# end

# p find_min(nums4)

def find_min(nums)
    len = nums.length
    right = len-1
    left = 0

    return nums[left] if nums[left] < nums[right]

    while nums[left] > nums[right] do
        mid = (left+right)/2
        nums[mid] < nums[left] ? right = mid : left = mid
        break if nums[left..right].length == 2
    end
    nums[left..right].sort[0]
end

p find_min(nums)
