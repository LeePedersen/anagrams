require 'anagrams'

describe('Anagrams#anagram') do
  it("returns false when given words are not anagrams") do
    word = Anagrams.new("cat", "chicken")
    expect(word.anagram?).to(eq(false))
  end
  it("returns true when given words are anagrams") do
    word = Anagrams.new("resistance", "ancestries")
    expect(word.anagram?).to(eq(true))
  end
  it("returns true when given words are anagrams, case insensitive") do
    word = Anagrams.new("Orchestra", "Carthorse")
    expect(word.anagram?).to(eq(true))
  end
  it("accounts for special characters and white space") do
    word = Anagrams.new("debit card", "bad credit")
    expect(word.anagram?).to(eq(true))
  end
end

describe('Anagrams#antigram') do
  it("returns false when given words are not antigrams") do
    word = Anagrams.new("cat", "chicken")
    expect(word.antigram?).to(eq(false))
  end
  it("returns true when given words are antigrams") do
    word = Anagrams.new("cat", "dog")
    expect(word.antigram?).to(eq(true))
  end
end

describe('Anagrams#not_real_words') do
  it("returns an array containing all words without vowels") do
    word = Anagrams.new("cat", "sdfg")
    expect(word.not_real_words).to(eq(["sdfg"]))
  end
end


# describe('Anagrams#antigram') do
