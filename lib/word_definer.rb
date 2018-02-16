class Word
  @@word_list = []

  attr_accessor :word
  attr_accessor :definition

  def initialize(word)
    @word = word
    @@defintion_list = []
  end

  def self.all()
    @@word_list
  end

  def save()

  end


end
