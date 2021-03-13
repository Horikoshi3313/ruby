require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type = "1"
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  file = File.open("#{file_name}.csv", "a")
  
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl + Dを押します"
  memo_message = gets
  file.puts "#{memo_message}"
  
  elsif memo_type == "2"
    puts "編集ファイルを入力してください"
    file_name = gets
    file = File.open("#{file_name}.csv", "a")
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl + Dを押します"
    memo_message = gets
    file.puts "#{memo_message}"
    
  end