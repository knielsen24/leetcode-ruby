
def minimum_rounds(tasks)
    counter = tasks.tally.values
    count = 0

    counter.each do |val|
        if val < 2
            count = -1
            break
        elsif val === 2 || val === 3
            count += 1
        else
            count += (val/3.to_f).ceil
        end
    end

    count
end

tasks = [2,2,3,3,2,4,4,4,4,4,4]
p minimum_rounds(tasks)
