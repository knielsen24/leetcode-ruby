
def longest_common_prefix(strs)
    pre = ""
    len = (strs.min_by {|x| x.length}).length

    cut_strs = (strs.map { |w| w.split('').slice(0, len)}).transpose

    cut_strs.each do |arr|
        arr.uniq.length === 1 ? pre += arr.uniq[0] : break
    end
    
    pre
end


strs = ["flower","flow","floight"]
p longest_common_prefix(strs)
