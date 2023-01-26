# Input: nums = [1,2,3,1]
# Output: 4
# 1 & 3
#
## Input: nums = [2,1,1,2]
# Output: 4
# 2,2
#
# Input: nums = [2,7,9,3,1]
# Output: 12
# 2, 9, 1
#
# EDGE
# Input: nums = [2,7,9,1,1,9,100,x]
# Output: 12
# 2,9,1 = 12
# 7,1,9 = 17
# 2,1,9 = 12
# 2,9,9 = 20
# 7,1 = 8

# EDGE
# Input: nums = [1,30,97,70,1]
# Output: 12
# 2, 9, 1


# get sum of odd integers, and even integers and compare

def rob(nums)
    even = nums.values_at(* nums.each_index.select {|i| i.even?}).sum
    odd = nums.values_at(* nums.each_index.select {|i| i.odd?}).sum

    even > odd ? even : odd
end

nums1 = [1,2,3,1]
nums2 = [2,7,9,3,1]

p rob(nums2)
