require('rspec')
require('definition')


describe(Definition)do
  before()do
    Definition.clear()
  end

  describe('#definition') do
    it('returns the definition of the word')do
      test_definition = Definition.new("a winged flying creature")
      expect(test_definition.definition()).to(eq("a winged flying creature"))
    end
  end

  describe('.all')do
    it('is empty at first')do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('.clear')do
    it('empties the array of saved definitions')do
      test_definition = Definition.new({:definition => "a winged flying creature"}).save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save')do
    it('saves the definitions to the array')do
      test_definition = Definition.new({:definition => "a winged flying creature"})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

end
