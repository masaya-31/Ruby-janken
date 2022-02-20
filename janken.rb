$winer = ""
    
def way
  puts "じゃんけん..."

  def janken
      
    puts "[0](グー) [1](チョキ) [2](パー) [3](戦わない)"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    hands = ["グー","チョキ","パー"]
    
    if player_hand == program_hand
      puts "あなた : #{hands[player_hand]}を出しました"
      puts "相手 : #{hands[program_hand]}を出しました"
    
      puts "あいこで..."
    
      return true
    
    elsif (player_hand == 0 && program_hand == 1 )||(player_hand == 1 && program_hand == 2 )||(player_hand == 2 && program_hand == 0 )
      $winer = "player"
      puts "あなた : #{hands[player_hand]}を出しました"
      puts "相手 : #{hands[program_hand]}を出しました"
    
      puts "あなたの勝ちです"
    
      return false
    
    elsif (player_hand == 0 && program_hand == 2 )||(player_hand == 1 && program_hand == 0 )||(player_hand == 2 && program_hand == 1 )
      $winer = "program"
      puts "あなた : #{hands[player_hand]}を出しました"
      puts "相手 : #{hands[program_hand]}を出しました"
      
      puts "あなたの負けです"
      return false
    
    elsif (player_hand == 3)
      puts "戦わなかった"
      
      puts "じゃんけん..."
      return true
      
    else
      puts "エラー"
      return true
    end
  end
  
  next_game = true
  
  while next_game
    next_game = janken
    
  end
    
  puts "あっち向いて..."
  
  puts "[0](上),[1](下),[2](左),[3](右)"
  
  player_face = gets.to_i
  program_face = rand(4)
  
  faces = ["上","下","左","右"]
    
  puts "ホイ!"
  
    puts "あなた : #{faces[player_face]}"
    puts "相手 : #{faces[program_face]}"
  
    if player_face == program_face
    
      return false
      
    else
  
      return true
    end
end
  
next_game = true

while next_game
  next_game = way
end

case $winer
when "player"
  puts "あなたの勝ちです"
when "program"
  puts "あなたの負けです"
end