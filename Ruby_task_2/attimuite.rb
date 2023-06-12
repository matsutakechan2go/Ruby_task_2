def attimuite_win

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

def attimuite_lose
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