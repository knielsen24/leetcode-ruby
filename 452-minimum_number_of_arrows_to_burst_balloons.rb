
def overlap?(r1,r2)
    !(r1.first > r2.last || r1.last < r2.first)
end

def find_min_arrow_shots(points)
    p sorted = points.sort
    start = sorted[0]
    remaining = sorted.slice(1, (sorted.size) -1)
    count = 0
    i = 1

    # p overlap?(start[0], remaining[0])

    while sorted
        sub_group = []
        j = 0
        remaining.each do |point|

            if overlap?(point,
                start.each do |pnt |
                    pnt
                end
            )
                sub_group.push(point)
            end
            j += 1
        end

        start.push(sub_group)
        i += 1
        count += 1
    end

    count
end

points1 = [[10,16],[2,8],[1,6],[11,12],[12,16], [20,21]]
points3 = [[1,2],[2,3],[3,4],[4,5]]
points4 = [[1,4],[2,6],[4,10],[8,11],[10,12],[11,13],[12,14]]
points5 = [[9,12],[1,10],[4,11],[8,12],[3,9],[6,9],[6,7]]

p find_min_arrow_shots(points5)



# create empty array
# run loop and see if there is overlap
# if overlap then concat
# slice index from array
# once loop finishes, add to count
# repeat

 # sorted.each do |point|
        #     p point
        #     if overlap?(start, point)
        #         sub_group.push(sorted[i])
        #     end
        #     i += 1
        # end

# def find_min_arrow_shots(points)
#     sorted = points.sort
#     count = 0

#     while sorted
#         i = 1
#         for point in sorted do
#             break if sorted[i] && !overlap?(sorted[0], sorted[i])
#             i +=1
#         end
#         count += 1
#         p sorted
#         sorted = sorted[i..-1]
#     end
#     count
# end
