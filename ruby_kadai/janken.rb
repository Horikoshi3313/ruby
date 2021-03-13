puts "じゃんけん…"

def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
a = gets.to_i
b = rand(3)

hands = ["グー","チョキ","パー"]
puts "ぽん！"
puts "あなた：#{hands[a]}を出しました"
puts "相手：#{hands[b]}を出しました"

if a == b 
  puts "あいこで…"
  
  return true
  
  elsif (a == 0 && b ==1) ||(a == 1 && b ==2)||(a == 2 && b == 0)
    puts "あっち向いて"
    puts "0(上)1(下)2(左)3(右)"
    
    c = gets.to_i
    d = rand(3)
    
    finger = ["0(上)","1(下)","2(左)","3(右)"]
    puts "ホイ"
    puts "あなた：#{finger[c]}を指しました"
    puts "相手：#{finger[d]}を指しました"
    
    if c == d
      puts "あなたの勝ちです"
    else
      puts "やったね！"
    end
    
  elsif (a == 0 && b == 2) ||(a == 1 && b == 0)||(a == 2 && b == 1)
    puts "あっち向いて"
    puts "0(上)1(下)2(左)3(右)"
    
    e = gets.to_i
    f = rand(3)
    
    finger2 = ["0(上)","1(下)","2(左)","3(右)"]
    puts "ホイ"
    puts "あなた：#{finger2[e]}を指しました"
    puts "相手：#{finger2[f]}を指しました"
    
    if e == f
      puts "あなたの負けです"
    else
      puts "再戦です"
    end
    
  end
  
end

next_game = true

while next_game
  next_game = janken
end
    