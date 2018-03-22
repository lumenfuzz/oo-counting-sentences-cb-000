require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.scan(/[^\.!?]+[\.!?]/)
    i = 0
    sentence_array.each do |sentence|
      if sentence == "." || sentence == "?" || sentence == "!"
        #this is not a sentence!
      else
        i += 1
      end
    end
      return i
  end
end
