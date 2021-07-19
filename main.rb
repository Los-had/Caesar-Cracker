puts "Insert your text here."
txt = gets.chomp
txt.scan(/./)
len = txt.length
result = ""
j = 0
k = 0

puts "-" * 55
while j <= 25 do
  while k <= 25 do 
    len.times do |i|
      result += (txt[i].ord - j).chr + "|"
    end
    puts "[#{k}]: #{result}\n"
    puts "-" * 55 + "\n"
    j += 1
    k += 1
  end
end