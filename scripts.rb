require('./lib/anagram_check')
require('./lib/anagram_create')

puts `whoami > info.txt`
name = File.read('info.txt').split
puts "Hello, #{name[0].capitalize}"

puts "Enter 1 to check if two words are anagrams, or 2 to find possible anagrams for a word"
script = gets.chomp

if script == "1"
  puts "This is the anagram checker. Please enter your first word"
  word_a = gets.chomp
  puts "Enter your second word"
  word_b = gets.chomp

  words = Anagrams.new(word_a, word_b)

  puts `clear`

  not_real = words.not_real_words.join(", ")
  if not_real.length > 0
    puts "Not a real word: #{not_real}"
  end

  if words.anagram?
    puts "#{words.words[0]} and #{words.words[1]} are anagrams"
  else
    puts "#{words.words[0]} and #{words.words[1]} are not anagrams"
    if words.antigram?()
      puts "#{words.words[0]} and #{words.words[1]} have no letter matches and are antigrams"
    else
      puts "#{words.words[0]} and #{words.words[1]} have some letter matches and so are not antigrams"
    end
  end
end

if script == "2"
  puts "Enter a word to find its anagrams"
  word = gets.chomp
  word_bank = File.read('/usr/share/dict/words').split
  find_anagrams = Anagram_create.new(word, word_bank)
  puts find_anagrams.find
end
