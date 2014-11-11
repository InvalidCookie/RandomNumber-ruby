#to test the Infinite monkey theorem
count = 0
xcount = 0
i = 0
string = ""
num_array = ('a'..'z').to_a
num_array << " "
word = ["cat", "dog", "tee", "frog",]

puts "Type 'start' to begin"
start = gets.chomp.downcase

exit if start=="exit"


word.each do |word|

5.times do

i=0
string = ""

wl = word.length
wl.times {string << '*'}

puts "processing... #{word}"

t = Time.new
t = t.strftime("%Y-%m-%d %H:%M:%S:%L")
open('log.txt', 'a') do |f|
 f.puts "start: #{t} : #{word}"
end

until i == 1
	number = Random.rand(0..26)
	num_fetch = num_array.fetch(number)
	string.insert(0, num_fetch)
	string.chop!
	#puts string
	count += 1
if count == 1000
	count = 0
	xcount += 1
end
if string == word
	i = 1
end
end

puts "#{word} complete"

puts "count: #{count}"
puts "1000 x #{xcount}"

t = Time.new
t = t.strftime("%Y-%m-%d %H:%M:%S:%L")
open('log.txt', 'a') do |f|
 f.puts "  end: #{t} : #{word} : count:#{count}, 1000 x #{xcount}"
end

puts t
puts""

sleep(1)
end #word.each end

end #times end