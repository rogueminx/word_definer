class Word

  @@word_list = []

  attr_accessor :word, :definiton_list
  attr_reader :id

  def initialize(word)
    @word = word
    @defintion_list = []
    @id = @@word_list.length + 1
  end

  def self.clear()
    @@word_list = []
    @definiton_list = []
  end

  def self.all()
    @@word_list
  end

  def save()
    @@word_list.push(self)
  end

  def save_definition(definition)
    @defintion_list.push(definition)
  end

  def call_definitions()
    @@word_list
  end

  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |item|
      if item.id == word_id
        return item.id
      end
    end
  end

  def self.find_by_word(word)
    @@word_list.each do |item|
      if item.word == word
        return item.word
      end
    end
  end

end
