puts "Insert your text here."
txt = gets.chomp
txt.scan(/./)
len = txt.length
result = ''

len.times do |i|
  result += (txt[i].ord - 3).chr
end
puts result