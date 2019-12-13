require 'wordplay'

describe('Wordplay') do
  it("returns 'no anagrams when it cannot find an anagram") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Wordplay.new('queue', word_bank)
    expect(new_anagram.find).to(eq("No anagrams"))
  end
  it("returns a list of anagrams") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Wordplay.new('cat', word_bank)
    expect(new_anagram.find).to(eq("act, cat"))
  end
  it("returns a list of words that include that word") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Wordplay.new('hence', word_bank)
    expect(new_anagram.letter_game_cheats).to(eq("hence, henceforth, henceforward, thence, thenceforth, thenceforward, whence"))
  end
  it("returns a list of possible words to be made with all or some of the letters, scrabble-style") do
    word_bank = File.read('/usr/share/dict/words').split
    new_cheat = Wordplay.new('xooooo', word_bank)
    expect(new_cheat.scrabble).to(eq("ox"))
  end
end
