require "./voter"

describe Voter do
  context "A voter is created" do
    let(:matt) {Voter.new("Matt","l")}

    it " should come back as a voter" do
      expect(matt).to be_a(Voter)
    end

    it "should not raise an error if it is complete" do
      expect{matt}.not_to raise_error
    end

    context " and should raise an error if it" do          
      it " is missing a name" do
        expect{Voter.new("","d")}.to raise_error(ArgumentError)
      end

      it " is missing a party" do
        expect{Voter.new("Matt","")}.to raise_error(ArgumentError)
      end

      it " the party isn't d or r" do
        expect{Voter.new("Matt","jargon")}.to raise_error(ArgumentError)
      end
    end
  end
end
