# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

# psuedo: create library for each digit
#           digit : array of 3 chars
#  for each digit find all combinations

def combinations (current, next_arr)
    p current.map {|char| next_arr.map {|char2| char2} }
    current.map {|char| next_arr.map {|char2| char + char2}}.flatten
end

def letter_combinations(digits)
    dictionary = {
        "2" => %w(a b c),
        "3" => %w(d e f),
        "4" => %w(g h i),
        "5" => %w(j k l),
        "6" => %w(m n o),
        "7" => %w(p q r s),
        "8" => %w(t u v),
        "9" => %w(w x y z),
    }

    dig_len = digits.length
    return [] if dig_len == 0
    return dictionary[digits] if dig_len == 1
    digs_arr = digits.split("")
    arr = []

    i = 0
    current = dictionary[digs_arr[i]]

    while i < dig_len -1
        current = combinations(current, dictionary[digs_arr[i + 1]])
        i += 1
    end
    current
end

digits = "234"
p letter_combinations(digits)
