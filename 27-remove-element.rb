nums = [3,2,2,3]
nums2 = [0,1,2,2,3,0,4,2]
val = 3
val2 = 2

def remove_element(nums, val)
    k = nums.reject {|i| i === val}
    k
end

remove_element(nums, val)
