require('./lib/anagram')

puts "This is the anagram checker. Please enter your first word"
word_a = gets.chomp
puts "Enter your second word"
word_b = gets.chomp

words = Words.new(word_a, word_b)

puts `clear`
# puts "Checking anagrams."
# sleep 0.5
# puts `clear`
# puts "Checking anagrams.."
# sleep 0.5
# puts `clear`
# puts "Checking anagrams..."
# sleep 0.5

not_real = words.not_real_words.join(", ")
if not_real.length > 0
  puts "Not a real word: #{not_real}"
end

if words.anagram?()
  puts "#{words.words[0]} and #{words.words[1]} are anagrams"
else
  puts "#{words.words[0]} and #{words.words[1]} are not anagrams"
  if words.antigram?()
    puts "#{words.words[0]} and #{words.words[1]} have no letter matches and are antigrams"
  else
    puts "#{words.words[0]} and #{words.words[1]} have some letter matches and so are not antigrams"
  end
end
