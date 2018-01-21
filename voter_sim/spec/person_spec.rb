require './person'

describe Person do
  context "All the things a person should do." do
    it " When a new person is created it should return a person." do
      expect(Person.new("Matt")).to be_a(Person)
    end

    it "When we delete a person, it is no longer around." do
      expect(Person.new("Matt").delete).to be_a(Nil)
    end


    it "We can list all of the persons"

  end
end
