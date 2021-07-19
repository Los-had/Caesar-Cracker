puts "Insert your text here."
txt = gets.chomp
txt.scan(/./)
len = txt.length
result = ""
j = 0

while j <= 26 do 
  len.times do |i|
    result += (txt[i].ord - j).chr
  end
  puts " #{result}\n"
  j += 1
end