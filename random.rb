i = 0
count = 0
string = ""
num_array = ('a'..'z').to_a
num_array << " "
puts "processing..."

until i == 1000000
number = Random.rand(0..26)
num_fetch = num_array.fetch(number)
string << num_fetch
i += 1
count +=1
if count == 100000
	puts i
	count = 0
end 
end

puts "done, saving string..."
open('data.txt', 'w') do |f|
 f.puts string
end
puts "save complete"