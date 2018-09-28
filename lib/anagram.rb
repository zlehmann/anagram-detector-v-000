# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(potential_matches)
    results = []
    word_to_match = @word.split("")
    potential_matches.each do |input|
      test_word = input.split("")
      if word_to_match != test_word
        if word_to_match.sort == test_word.sort
          results << input
        end
      end
    end
    results

  end


end
