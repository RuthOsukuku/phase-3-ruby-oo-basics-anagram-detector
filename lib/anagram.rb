# Your code goes here!
class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word.downcase
    end
  
    def match(words)
      words.select { |w| anagram?(w.downcase) }
    end
  
    private
  
    def anagram?(other_word)
      return false if word == other_word || word.length != other_word.length
  
      word.chars.sort == other_word.chars.sort
    end
  end

  listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
# Output: ["inlets"]
