require './politician'

describe Politician do
  context "When a politician is created" do
    let(:matt) {Politician.new("Matt","d")}
    it "should be a politician" do
      expect(matt).to be_a(Politician)
    end

    it "should not raise an error" do
      expect{matt}.not_to raise_error
    end

    context "should raise an error" do
      it "does not have have a name" do
        expect{Politician.new("","d")}.to raise_error(ArgumentError)
      end
      it "does not have a party" do
        expect{Politician.new("Matt","")}.to raise_error(ArgumentError)
      end
      it "has a party that isn't d or r" do
        expect{Politician.new("Matt","jargon")}.to raise_error(ArgumentError)
      end
    end
  end
end
