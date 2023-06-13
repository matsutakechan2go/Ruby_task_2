
puts "最初はグー！じゃんけん..."
puts "1(グー) 2(チョキ) 3(パー) 0(戦わない)"

def janken 

  player_num = gets.chomp.to_i 
  computer_num = rand(1..3) 
  jankens = ["戦わない","グー","チョキ","パー"]

  if player_num == 0
    puts "---------------"
    puts "あなた：#{jankens[player_num ]}"
    puts "---------------"
    puts "ゲーム終了"
    exit
  end

  if player_num > 3
    puts "無効な数字です"
    return janken
  end

  puts "ホイ！"
  puts "---------------"
  puts "あなた：#{jankens[player_num ]}"
  puts "相手：#{jankens[computer_num]}"
  puts "---------------"
  
  if player_num == computer_num
    puts "あいこで…"
    return janken 
  
  elsif 
    player_num == 1 && computer_num == 2 ||
    player_num == 2 && computer_num == 3 ||
    player_num == 3 && computer_num == 1
    @janken_result = "win"
    puts "あなたの勝ち！"  
    puts "あっち向いて..."
    puts "1(←) 2(↑) 3(→) 4(↓) 0(戦わない)"
    attimuite
  
  else 
    @janken_result = "lose"
    puts "あなたの負け！"
    puts "あっち向いて..."
    puts "1(←) 2(↑) 3(→) 4(↓) 0(戦わない)"
    attimuite
  
  end
end




def attimuite

  player_direction = gets.chomp.to_i
  computer_direction = rand(1..4)

  directions = ["戦わない","←","↑","→","↓",]

  
  if player_direction == 0
    puts "---------------"
    puts "あなた：#{directions[player_direction]}"
    puts "---------------"
    puts "ゲーム終了"
    exit
  end

  puts "ホイ！"
  puts "---------------"
  puts "あなた：#{directions[player_direction]}"
  puts "相手：#{directions[computer_direction]}"
  puts "---------------"

  if player_direction == computer_direction && (@janken_result == "win")
    puts "やったー！あなたの勝ち！"
    exit

  elsif computer_direction == player_direction && (@janken_result == "lose")
    puts "うーん、あなたの負け！"
    exit

  else
    puts "じゃんけん..."
    return janken
  end
end

janken

