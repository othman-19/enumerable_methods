#spec/calculator_spec.rb
require File.expand_path("../enumerable.rb")

RSpec.describe Enumerable do
  describe "#add" do
      it "returns the sum of two numbers" do
        expect(calculator.add(5, 2)).to eql(7)
      end
  end
end