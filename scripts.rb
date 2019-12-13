require('./lib/anagram')

puts "This is the anagram checker. Please enter your first word"
word_a = gets.chomp
puts "Enter your second word"
word_b = gets.chomp

words = Words.new(word_a, word_b)

puts `clear`
puts "Checking anagrams..."
sleep 1
puts words.anagram()
