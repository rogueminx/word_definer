class Word
  @@word_list = []

  attr_accessor :word
  attr_accessor :definition

  def initialize(word, definition)
    @word = word
    @@defintion_list = [definition]
  end

  def self.all()
    @@word_list
  end


  def save()

  end


end
