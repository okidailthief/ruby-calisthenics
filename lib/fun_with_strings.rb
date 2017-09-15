module FunWithStrings
  def palindrome?
    word1 = self.downcase.scan(/\w/)
    word2 = self.reverse.downcase.scan(/\w/)
    return true if word1 == word2
  end 
  def count_words
    words = self.split(/\W|\s/)
    count = Hash.new(0)
    words.each do |word| 
      if word.downcase != ""
        count[word.downcase] += 1 
      end
    end
  return count
  end
  
  def anagram_groups
    self.split.group_by{|w| w.chars.sort}.values
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
