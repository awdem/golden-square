def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    next unless char =~ /[A-Z]/i
    counter[char] += 1
  end
  counter.to_a.sort_by { |k, v| v }.reverse[0][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"


p get_most_common_letter("the roof, the roof, the roof is on fire!")

p get_most_common_letter("Help is the way????????????")

