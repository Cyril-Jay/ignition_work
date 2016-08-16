tips_knife_juggling = (2.10 + 0.77 + 5 + 1 + 3).round(2)
tips_torch_juggling = (6 + 3.50 + 7).round(2)
tips_hand_balancing = (2 + 1).round(2)
tips_human_blockhead = (0.75 + 0.43).round(2)
tips_total_avg = (tips_knife_juggling + tips_torch_juggling + tips_hand_balancing +tips_human_blockhead)/12

total_knife_juggling = tips_knife_juggling
total_torch_juggling = tips_torch_juggling
total_hand_balancing = tips_hand_balancing
total_human_blockhead = tips_human_blockhead
total_all_tips = total_knife_juggling + total_torch_juggling + total_hand_balancing + total_human_blockhead

puts "Knife Juggling:
#{total_knife_juggling}
Torch Juggling:
#{total_torch_juggling}
Hand Balancing:
#{total_hand_balancing}
Human Blockhead:
#{total_human_blockhead}"

puts "Total tips #{total_all_tips}"

puts "Average tip #{tips_total_avg}"
