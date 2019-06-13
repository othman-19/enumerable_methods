#spec/calculator_spec.rb
require File.expand_path("../enumerable.rb")

RSpec.describe Enumerable do
  describe "#my_each_with_index" do
      it "find each item with his index" do
        arr=[2,4,6]
        result=[]
        arr.my_each_with_index{|x,i| result.push("#{i} index of #{x}")}
        expect(result).to eql(['0 index of 2','1 index of 4','2 index of 6'])
      end
      it "return the original array" do
        arr=[2,4,6]
        expect(arr.my_each_with_index{|x,i| result.push("#{i} index of #{x}")}).to eql(arr)
      end
  end

  describe "#my_each_with_index" do
      it "find each item with his index" do
        arr=[2,4,6]
        result=[]
        arr.my_each_with_index{|x,i| result.push("#{i} index of #{x}")}
        expect(result).to eql(['0 index of 2','1 index of 4','2 index of 6'])
      end
      it "return the original array" do
        arr=[2,4,6]
        expect(arr.my_each_with_index{|x,i| result.push("#{i} index of #{x}")}).to eql(arr)
      end
  end
end