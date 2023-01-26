input = [1,3,5,6,7,8,9]
target = 3

def search_insert(nums, target)
    left = 0
    right = nums.size() -1
    mid = (left + right)/2

    while nums[mid] != target
        if target < nums[mid]
            left = mid -1
        elsif
            right = mid + 1
        end
        mid = (left + right)/2
    end


    if nums[mid] === target
        mid
    elsif
        -1
    end

end

p search_insert(input, target)
