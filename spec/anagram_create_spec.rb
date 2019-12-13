require 'anagram_create'

describe('Anagram_create') do
  it("returns 'no anagrams when it cannot find an anagram") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Anagram_create.new('queue', word_bank)
    expect(new_anagram.find).to(eq("No anagrams"))
  end
  it("returns a list of anagrams") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Anagram_create.new('cat', word_bank)
    expect(new_anagram.find).to(eq("act, cat"))
  end
  it("returns a list of words that include that word") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Anagram_create.new('hence', word_bank)
    expect(new_anagram.letter_game_cheats).to(eq("hence, henceforth, henceforward, thence, thenceforth, thenceforward, whence"))
  end
end
