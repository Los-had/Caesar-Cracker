def menu
  puts "-" * 55
  puts "[1]. Caesar cipher crack\n[2]. Caesar cipher encryption\n[3]. Caesar cipher decryption\n[4]. Exit"
  puts "-" * 55
  puts "What you want to do?"
  choice = gets.chomp
  case choice
  when "1"
    caesar_crack()
  when "2"
    caesar_encryption()
  when "3"
    caesar_decryption()
  when "4"
    exit
  else
    puts "'#{choice}': is invalid"
  end
end 

def caesar_decryption
  puts "Insert your text here."
  txt = gets.chomp
  puts "Insert cipher key"
  key = gets.chomp.to_i
  txt.scan(/./)
  len = txt.length
  result = ""
  len.times do |i|
    result += (txt[i].ord - key).chr
  end
  puts '-' * 55
  puts result
  menu()
end

def caesar_encryption
  puts "Insert your text here."
  txt = gets.chomp
  puts "Insert cipher key"
  key = gets.chomp.to_i
  txt.scan(/./)
  len = txt.length
  result = ""
  len.times do |i|
    result += (txt[i].ord + key).chr
  end
  puts '-' * 55
  puts result
  menu()
end

def caesar_crack
  puts "Insert your text here."
  txt = gets.chomp
  txt.scan(/./)
  len = txt.length
  result = ""
  j = 1
  k = 1

  puts "-" * 55
  while j <= 25 do
    while k <= 25 do 
      len.times do |i|
        result += (txt[i].ord - j).chr
      end
      puts "[#{k}]: #{result}\n"
      puts "-" * 55 + "\n"
      j += 1
      k += 1
      result = ""
    end
  end
end

menu
