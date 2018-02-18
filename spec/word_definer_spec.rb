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

  describe("#save_definition") do
    it("adds a definition") do
      new_word = Word.new("frog")
      new_word.save()
      expect(new_word.save_definition("a slimy toad")).to(eq(["a slimy toad"]))
    end
  end

  describe("#save_definition") do
    it("adds another definition") do
      new_word = Word.new("frog")
      new_word.save()
      new_word.save_definition("a slimy toad")
      expect(new_word.save_definition("long leg water jumper")).to(eq(["a slimy toad", "long leg water jumper"]))
    end
  end

  describe("#call_definitions") do
    it("calls a list of current definition") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      new_word.save_definition("a slimy toad")
      new_word.save_definition("long leg water jumper")
      next_word.save_definition("lumpy desert dweller")
      expect(new_word.call_definitions()).to(eq(["a slimy toad", "long leg water jumper"]))
    end
  end

  describe("#id_call_definitions") do
    it("calls a list of current definition") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      new_word.save_definition("a slimy toad")
      new_word.save_definition("long leg water jumper")
      next_word.save_definition("lumpy desert dweller")
      expect(next_word.id_call_definitions(2)).to(eq(["lumpy desert dweller"]))
    end
  end

  describe(".find") do
    it("finds an item based on id") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      expect(Word.find(1)).to(eq(1))
      expect(Word.find(2)).to(eq(2))
    end
  end

  describe(".find_word") do
    it("finds an item based on id") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      expect(Word.find_word(1)).to(eq("frog"))
      expect(Word.find_word(2)).to(eq("camel"))
    end
  end

  describe(".temp_find_word") do
    it("finds an word based on temp id") do
      new_word = Word.new("frog")
      new_word.save()
      next_word = Word.new("camel")
      next_word.save()
      last_word = Word.new("pollywog")
      last_word.save()
      expect(Word.temp_find_word(2)).to(eq("camel"))
    end
  end
end
