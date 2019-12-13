require 'anagram'

describe('Words#anagram') do
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
end

describe('Words#antigram') do
  it("returns false when given words are not antigrams") do
    word = Words.new("cat", "chicken")
    expect(word.antigram?).to(eq(false))
  end
  it("returns true when given words are antigrams") do
    word = Words.new("cat", "dog")
    expect(word.antigram?).to(eq(true))
  end
end

describe('Words#not_real_words') do
  it("returns an array containing all words without vowels") do
    word = Words.new("cat", "sdfg")
    expect(word.not_real_words).to(eq(["sdfg"]))
  end
end

# describe('Words#antigram') do
