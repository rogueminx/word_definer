class Word

  @@word_list = []

  attr_accessor :word, :definiton_list
  attr_reader :id

  def initialize(word)
    @word = word
    @definition_list = []
    @id = @@word_list.length + 1
  end

  def self.clear()
    @@word_list = []
  end

  def self.all()
    @@word_list
  end

  def save()
    @@word_list.push(self)
  end

  def save_definition(definition)
    @definition_list.push(definition)
  end

  def call_definitions()
    word_id = id.to_i()
    temp_array = []
    @@word_list.each do |item|
      if item.id == word_id
        @definition_list.each do |item|
          temp_array.push(item)
        end
      return temp_array
      end
    end
  end

  def store_id(id)
    @id_of_page = id.to_i
  end

  def temp_find_word()
    word_id = @id_of_page
    binding.pry
    @@word_list.each do |item|
      if item.id == word_id
        return item.word
      end
    end
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
