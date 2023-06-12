puts "最初はグー！じゃんけん..."
puts "1(グー) 2(チョキ) 3(パー) 0(戦わない)"

def janken #じゃんけんメソッドを作成
  player_num = gets.chomp.to_i 
  computer_num = rand(1..3) #cp側は疑似乱数を生成するrandメソッドを使う
  
  jankens = ["戦わない","グー","チョキ","パー"]

  puts "ホイ！"
  
  if player_num > 3
    puts "無効な数字です"
    return true
  end
  
  if player_num == computer_num
    puts "---------------"
    puts "あなた：#{jankens[player_num ]}"
    puts "相手：#{jankens[computer_num]}"
    puts "---------------"
    puts "あいこで…"
    return true 

  elsif player_num == 0
    puts "---------------"
    puts "あなた：#{jankens[player_num ]}"
    puts "---------------"
    puts "ゲーム終了"
    return false
  
  elsif 
    player_num == 1 && computer_num == 2 ||
    player_num == 2 && computer_num == 3 ||
    player_num == 3 && computer_num == 1
    
    puts "---------------"
    puts "あなた：#{jankens[player_num]}"
    puts "相手：#{jankens[computer_num]}"
    puts "---------------"
    puts "あなたの勝ち！"  
    attimuitewin
  
  else 
    puts "---------------"
    puts "あなた：#{jankens[player_num]}"
    puts "相手：#{jankens[computer_num]}"
    puts "---------------"
    puts "あなたの負け！"
    attimuitelose

end
end

next_game = true

while next_game 
  next_game = janken
end #これによりjankenにtrueが返ってくる限りjankenメソッドは繰り返される

def attimuitewin

  puts "あっち向いて..."
  puts "1(左) 2(上) 3(右) 4(下) 0(戦わない)"

  player_direction = gets.chomp.to_i
  computer_direction = rand(1..4)

  puts "ホイ！"

  directions = ["戦わない","左","上","右","下",]

  if player_direction == 0
    puts "---------------"
    puts "あなた：#{directions[player_direction]}"
    puts "---------------"
    puts "ゲーム終了"
  end

  if player_direction == computer_direction 
    puts "---------------"
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[computer_direction]}"
    puts "---------------"
    puts "やったー！あなたの勝ち！"

  else 
    puts "---------------"
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[computer_direction]}"
    puts "---------------"
    
  end

end

def attimuitelose
  puts "あっち向いて..."
  puts "1(左) 2(上) 3(右) 4(下) 0(戦わない)"

  player_direction = gets.chomp.to_i
  computer_direction = rand(1..4)

  puts "ホイ！"

  directions = ["戦わない","左","上","右","下",]

  if computer_direction == player_direction
    puts "---------------"
    puts "相手：#{directions[computer_direction]}"
    puts "あなた：#{directions[player_direction]}"
    puts "---------------"
    puts "うーん、あなたの負け！"

  else
    puts "---------------"
    puts "相手：#{directions[computer_direction]}"
    puts "あなた：#{directions[player_direction]}"
    puts "---------------"
  end
end
