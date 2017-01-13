require 'rantly'
require 'rantly/rspec_extensions'
require 'rantly/shrinks'

# we define a property that always fails
# to demonstrate how Rantly behaves when a property is not satisfied
RSpec.describe "Array" do
  it "has only even numbers" do
    property_of {
      Rantly { array { integer } }
    }.check { |i|
      expect(i).to all(be_even)
    }
  end
end