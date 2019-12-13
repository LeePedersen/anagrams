require 'anagram'

describe('Word#anagram') do
  it("returns false when given words are not anagrams") do
    word = Words.new("cat", "chicken")
    expect(word.anagram?).to(eq(false))
  end
  # it("returns true when given words are anagrams") do
  #   word = Words.new("cat", "act")
  #   expect(word.anagram?).to(eq(true))
  # end
end

# describe('Word#antigram') do
