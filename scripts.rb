require('./lib/anagram_check')
require('./lib/anagram_create')

puts `whoami > info.txt`
name = File.read('info.txt').split
# puts "Hello, #{name[0].capitalize}"

puts "Enter 1 to check if two words are anagrams, 2 to find possible anagrams for a word, or 3 to find words that contain your word"
script = gets.chomp

word_bank = File.read('/usr/share/dict/words').split

if script == "1"
  puts "This is the anagram checker. Please enter your first word"
  word_a = gets.chomp
  puts "Enter your second word"
  word_b = gets.chomp

  words = Anagrams.new(word_a, word_b)

  puts `clear`

  not_real = words.not_real_words.join(", ")
  if not_real.length > 0
    puts "Not a real word #{name}: #{not_real}"
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
elsif script == "2"
  puts "Enter a word to find its anagrams"
  word = gets.chomp
  find_anagrams = Anagram_create.new(word, word_bank)
  puts find_anagrams.find

elsif script == "3"
  puts "Enter some letters to see what words they're a part of"
  word = gets.chomp
  find_words = Anagram_create.new(word, word_bank)
  puts find_words.letter_game_cheats
else
  puts "Dammit #{name[0]} you had one job"
end
