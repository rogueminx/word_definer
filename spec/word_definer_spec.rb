require('rspec')
require('pry')
require('word_definer')

describe("Word")do

  describe(".all") do
    it("is empty at first, and will populate later") do
      expect(Word.all()).to(eq([]))
    end
  end


  # describe("#save_word") do
  #   it("saves a new word") do
  #     new_word = Word.new("frog")
  #     new_word.save()
  #     expect(Word.)
  #
  #   end
  # end

end
