require './person'

describe Person do
  context "All the things a person should do." do
    it " When a new person is created it should return a person." do
      expect(Person.new("Matt","A Party")).to be_a(Person)
    end

  end
end
