require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    arr = self.split(' ').filter { |word| word.match(/[\.!?]/) }
    arr.length == 0 ? 0 : arr.length    
  end
end