require 'anagram_create'

describe('Anagram_create') do
  it("returns 0 when it cannot find an anagram") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Anagram_create.new('queue', word_bank)
    expect(new_anagram.find).to(eq("queue"))
  end
  it("returns 0 when it cannot find an anagram") do
    word_bank = File.read('/usr/share/dict/words').split
    new_anagram = Anagram_create.new('cat', word_bank)
    expect(new_anagram.find).to(eq("act, cat"))
  end
end
