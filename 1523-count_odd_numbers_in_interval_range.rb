def count_odds(low, high)
    count = 0
    odds = (high + 1 - low)/2
    (low % 2 != 0 && high % 2 != 0) ? count = odds + 1 : count = odds

    count
end


p count_odds(8, 11)

# def count_odds(low, high)
#     count = 0
#     diff = high + 1 - low

#     odds = diff/2

#     if (low % 2 == 0 && high % 2 != 0) || (low % 2 != 0 && high % 2 == 0)
#         p "triggered 1"
#         count = odds
#     elsif (low % 2 == 0 && high % 2 == 0)
#         p "triggered 2 "
#         count = odds
#     else
#         p "triggered 3 "
#         count = odds + 1
#     end

#     count
# end
