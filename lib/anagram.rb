class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a.downcase, word_b.downcase]
  end

  def anagram?()
    if @words[0].chars.sort.join.eql? @words[1].chars.sort.join
      true
    else
      false
    end
  end

  def antigram?()
    @words[0].each_char do |chr|
      if @words[1].include?(chr)
        return false
      end
    end
    return true
  end
end
