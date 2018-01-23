require './human'

describe Human do
  #title: before breakfast
  context "before breakfast" do
    let(:human) {Human.new}
      it "is hungry" do
      #  human = Human.new
        expect(human.tummy).to eq("hungry")
      end
      it "is sleepy" do
      #  human = Human.new
        expect(human.state).to eq("sleepy")
      end

  end


  #title: after breakfast
  context "after breakfast" do
    let(:human) {Human.new}
    #given a humen
    #when: it has had breakfast
    it "isn't hungy" do
      human.breakfast
      expect(human.tummy).to eq("full")
    end
    it "isn't sleepy" do
      human.breakfast
      expect(human.state).to eq("awake")
    end
    #then: it isn't hungry and sleepy

  end

end
