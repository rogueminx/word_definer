require('rspec')
require('pry')
require('word_definer')

describe("Word")do

  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first, and will populate later") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save_word") do
    it("saves a new word") do
      new_word = Word.new("frog")
      new_word.save()
      expect(Word.all()).to(eq([new_word]))
    end
  end

  describe("#add_definition") do
    it("adds a definition to a word") do
      new_word = Word.new("frog")
      new_word.save()
      new_word.add_definition("a slimy toad")
      expect(Word.all()).to(eq([new_word, ["a slimy toad"]]))
    end
  end

end
