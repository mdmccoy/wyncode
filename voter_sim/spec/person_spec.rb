require './person'

describe Person do
  context "When a person is created" do
    let(:matt) {Person.new("Matt","A Party")}

    it "should return a person." do
      expect(matt).to be_a(Person)
    end

    it "should not throw an error if everything is there" do
      expect{matt}.not_to raise_error
    end

    context " it should throw an error if" do
      it " no party is passed" do
        expect{Person.new("Matt","")}.to raise_error(ArgumentError)
      end

      it " no name is passed" do
        expect{Person.new("","d")}.to raise_error(ArgumentError)
      end
    end
  end
end
