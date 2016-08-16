class Leaderboard
GAME_INFO = [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 17,
      away_score: 13
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 24,
      away_score: 7
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 21,
      away_score: 17
    },
    {
      home_team: "Broncos",
      away_team: "Steelers",
      home_score: 11,
      away_score: 27
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 24,
      away_score: 31
    }
]

# YOUR CODE GOES HERE
  def initialize
    @name
    @rank
    @wins
    @losses
  end

# def team name
# Creates team object by iterating through GAME_INFO to create team objects with only their names.
# def team name and wins and losses
# Iterates through GAME_INFO again to set the number of wins and losses for each team.
# def sort teams by rank
# Sorts your team by wins and set their ranks.
# def summary
# Displays the leaderboard in the terminal.

end


# make a game class that has the winner and loser of each game?
# def summary
#   summary_string = "---------------------------------------------------\n" + "| Name      Rank      Total Wins    Total Losses  |\n"
#   @teams.each do |team|
#     padding = ' '
#     padding = padding * (10 - team.name.size)
#     summary_string += "|"+" " +"#{team.name}" + "#{padding}" + "#{team.rank}" + "         " + "#{team.wins} " + "             " "#{team.losses}" + "            " "|\n"
#   end
#   summary_string += "---------------------------------------------------"
#   summary_string
# end
# describe '#summary' do
#   it 'creates an organized ranking table of the teams' do
#     leaderboard.populate_ranks
#     summary =
#       '''
#       ---------------------------------------------------
#       | Name      Rank      Total Wins    Total Losses  |
#       | Patriots  1         3              0            |
#       | Steelers  2         1              1            |
#       | Broncos   3         1              2            |
#       | Colts     4         0              2            |
#       ---------------------------------------------------
#       '''
#     expect {leaderboard.summary}.to eq(summary)
#   end
#
