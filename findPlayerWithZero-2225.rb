# @param {Integer[][]} matches
# @return {Integer[][]}
# Input: matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
# Output: [[1,2,10],[4,5,7,8]]


def find_winners(a)
    a.transpose.then{ |w,l|
        # puts w -l
        losers = l.tally.reject{1<_2}.keys
        winners = (w-l).uniq

        puts l.tally.reject{1<_2}.keys

        [winners, losers]
    }.map &:sort
        # unique_players = matches.flatten.uniq
        # players = {}
        # winners = []
        # single_loss = []

        # unique_players.each do |player|
        #     players.store(player, [0, 0])
        # end

        # matches.each do |match|
        #   if players.key?(match[0])
        #     players[match[0]] = [(players[match[0]][0] + 1), players[match[0]][1]]
        #   end

        #   if players.key?(match[1])
        #     players[match[1]] = [players[match[1]][0], (players[match[1]][1] + 1)]
        #   end
        #   puts players
        # end

        # players.each do |player, results|
        #   if results[1] == 0
        #     winners.push(player)
        #   elsif results[1] == 1
        #     single_loss.push(player)
        #   end
        # end

        # [winners.sort, single_loss.sort]
  end

  matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
  p find_winners(matches)
