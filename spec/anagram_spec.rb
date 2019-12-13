require 'anagram'

describe('Word#anagram') do
  it("returns false when given words are not anagrams") do
    word = Words.new("cat", "chicken")
    expect(word.anagram?).to(eq(false))
  end
  it("returns true when given words are anagrams") do
    word = Words.new("resistance", "ancestries")
    expect(word.anagram?).to(eq(true))
  end
  it("returns true when given words are anagrams, case insensitive") do
    word = Words.new("Orchestra", "Carthorse")
    expect(word.anagram?).to(eq(true))
  end
  # ignore white space
end

describe('Word#antigram') do
  it("returns false when given words are not antigrams") do
    word = Words.new("cat", "chicken")
    expect(word.antigram?).to(eq(false))
  end
  it("returns true when given words are antigrams") do
    word = Words.new("cat", "dog")
    expect(word.antigram?).to(eq(true))
  end
end

# describe('Word#antigram') do
