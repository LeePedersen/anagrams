require 'anagram'

describe('Words#anagram') do
  it("returns false when given words are not anagrams") do
    word = Words.new("cat", "chicken")
    expect(word.anagram).to(eq(false))
  end
  it("returns true when given words are anagrams") do
    word = Words.new("resistance", "ancestries")
    expect(word.anagram).to(eq(true))
  end
  it("returns true when given words are anagrams, case insensitive") do
    word = Words.new("Orchestra", "Carthorse")
    expect(word.anagram).to(eq(true))
  end
  it("returns 'not an english word' when one or more of the words have no vowels")
end

describe('Words#antigram') do
  it("returns false when given words are not antigrams") do
    word = Words.new("cat", "chicken")
    expect(word.antigram).to(eq("cat and chicken are not antigrams"))
  end
  it("returns true when given words are antigrams") do
    word = Words.new("cat", "dog")
    expect(word.antigram).to(eq("cat and dog are antigrams"))
  end
end

# describe('Words#antigram') do
