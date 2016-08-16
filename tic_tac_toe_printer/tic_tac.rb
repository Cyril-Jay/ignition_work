board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

def print_grid(board)
  board.each do |row|
    row.each_with_index do |column, index|
      if column.nil?
        print " - "
      elsif column == "x"
        print " x "
      else column == "o"
        print " o "
      end
      if row[index] == column
        print "|"
      end
      #completly lost above and below here
    end
    puts "\n------------"
  end
  puts "\n"
end

puts print_grid(board_a)
