class Definition

  @@definition_list = []

  attr_accessor :definiton
  attr_reader :id

  def initialize()
    @definition
    @id
  end

  def self.all()
    @@definition_list
  end

end

class Word < Definition

  @@word_list = []

  attr_accessor :word
  attr_reader :id

  def initialize(word)
    @word = word
    @id = @@word_list.length + 1
  end

  def self.clear()
    @@word_list = []
    @@definition_list = []
  end

  def self.all()
    @@word_list.each do |item|
      return item.word
    end
  end

  def save()
    @@word_list.push(self)
  end

  def save_definition(definition)
    @@definition_list.push(@id)
    @@definition_list.push(definition)
  end

  def add_definition(definition)
    @@definition_list.push(definition)
    return_array = []
    @@definition_list.each do |item|
      return_array.push(item)
    end
    return_array
  end


  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |item|
      if item.id == word_id
        return item.id
      end
    end
  end

  def self.find_word(id)
    @@word_list.each do |item|
      if item.id == id
        return item.word
      end
    end
  end

end
