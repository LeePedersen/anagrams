require 'anagram_create'

describe('Anagram_create') do
  it("returns 0 when it cannot find an anagram") do
    new_anagram = Anagram_create.new('queue')
    expect(new_anagram.find).to(eq(0))
  end
end
