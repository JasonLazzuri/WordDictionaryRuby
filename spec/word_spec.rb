require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it("returns the word") do
      test_word = Word.new("Bob")
      expect(test_word.word()).to(eq("Bob"))
    end
  end

  describe('#definition') do
    it("returns the words definition") do
      test_definition = Definition.new("a winged flying creature")
      expect(test_definition.definition()).to(eq("a winged flying creature"))
    end
  end

end
