vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here

# How many people voted in precinct 1
first_precinct_votes = 0
vote_results.first.each { |total| first_precinct_votes += total }
puts first_precinct_votes

# Who was the winning candidate in Precinct 4?
votes_in_p4 = vote_results.last.max
p4_winner = vote_results.last.index(votes_in_p4)
puts candidates[p4_winner]



mary_sue_votes = 0
billy_joe_votes = 0
sally_jane_votes = 0
vote_results.size.times do |precinct_index|
  mary_sue_votes += vote_results[precinct_index][0]
  sally_jane_votes += vote_results[precinct_index][1]
  billy_joe_votes += vote_results[precinct_index][2]
end
# How many people voted for Mary Sue?
print "Mary Sue: "
puts mary_sue_votes

# How many people voted for Billy Joe?
print "Billy Joe: "
puts billy_joe_votes

# How many people voted for Sally Jane?
print "Sally Jane: "
puts sally_jane_votes

# How many people voted in total?
print "Total Votes: "
puts mary_sue_votes + billy_joe_votes + sally_jane_votes

# Who had the most votes?
if mary_sue_votes > billy_joe_votes && mary_sue_votes > sally_jane_votes
  puts "Mary had the most"
elsif billy_joe_votes > mary_sue_votes && billy_joe_votes > sally_jane_votes
  puts "Billy had the most"
else puts "Sally had the most"
end
