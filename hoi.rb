# Your code here!

puts "最初はグーじゃんけん・・・・"

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー"

  player_hand = gets.to_i
  program_hand = rand(3)  #２以下をランダムに出させる
  
  jankens = ["グー", "チョキ","パー"]
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
  
  
  if player_hand == program_hand  #あいこの場合はじゃんけんのみループさせる
   puts "--------------------------------"
   puts "あいこで"
   return true    
  end
   
  puts "--------------------------------"
  puts "あっち向いて..."
  puts "[0]↑\n[1]↓\n[2]←\n[3]→"
  
  player_direction = gets.to_i  #じゃんけんに勝った場合あっち向いてホイに移行する
  program_direction = rand(4) #３以下をランダムに出させる

  jankens = ["グー", "チョキ","パー"]

  hois = ["↑","↓","←","→"]
 
   
  if(player_direction != program_direction) #向きが一致しない場合はじゃんけんからやり直し
    puts "ホイ！"
    puts "あなたの手:#{hois[player_direction]}, 相手の手:#{hois[program_direction]}"
    puts "--------------------------------"
    puts "じゃんけん..."
    return true
    
  elsif(player_hand == 0 && program_hand == 1) && (player_direction == program_direction)|| 
    (player_hand == 1 && program_hand == 2) && (player_direction == program_direction)||
    (player_hand == 2 && program_hand == 0) && (player_direction == program_direction)  #勝った場合かつ向きが一致した場合終了させる
    puts "ホイ！"
    puts "あなたの手:#{hois[player_direction]}, 相手の手:#{hois[program_direction]}"
    puts "あなたの勝ちです"
    return false

  elsif(player_direction != program_direction)  #向きが一致しない場合はじゃんけんからやり直し
   puts "あなたの手:#{hois[player_direction]}, 相手の手:#{hois[program_direction]}"
   return true
   
  else(player_direction == program_direction) #じゃんけんに負けて相手と向きが一致してしまった場合は終了させる
   puts "あなたの手:#{hois[player_direction]}, 相手の手:#{hois[program_direction]}"
   puts "あなたの負けです"
   return false

  end
end



next_game = true  #条件がtrueの場合じゃんけんからやり直しする

while next_game do
  next_game = janken
end



