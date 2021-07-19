puts "Insert your text here."
txt = gets.chomp
txt.scan(/./)
len = txt.length
result = ""
j = 0

puts "-" * 55
while j <= 25 do 
  len.times do |i|
    result += (txt[i].ord - j).chr
  end
  puts "#{result}\n\n"
  j += 1
end