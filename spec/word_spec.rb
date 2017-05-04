require('rspec')
require('word')


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

  describe('.all') do
    it("is empty at first")do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties the array of saved words')do
      test_word = Word.new({:word => "bat"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to the array of save words')do
      test_word = Word.new({:word => "bat"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

end
