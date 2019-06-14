# frozen_string_literal: true

# spec/calculator_spec.rb
# require File.expand_path('./enumerable.rb')
require File.expand_path('../enumerable.rb')

RSpec.describe Enumerable do
  let(:arr1) { [2, 4, 6, 8, 10, 12] }
  #=begin

  describe '#my_each_with_index' do
    let(:arr) { [2, 4, 6] }
    let(:result) { [] }
    it 'find each item with his index' do
      arr.my_each_with_index { |x, i| result.push("#{i} index of #{x}") }
      expect(result).to eql(['0 index of 2', '1 index of 4', '2 index of 6'])
    end
    it 'return the original array' do
      expect(arr.my_each_with_index do |x, i|
               result.push("#{i} index \
                     of #{x}")
             end).to eql(arr)
    end
  end
  #=end

  #=begin
  describe '#my_select' do
    let(:select_block) { proc { |x| x > 6 } }
    it 'return a new array with asked condition in given block' do
      expect(arr1.my_select(&select_block)).to eql([8, 10, 12])
    end
    it 'Do not chenge the original array' do
      arr1.my_select { |x| x > 6 }
      expect(arr1).to eql([2, 4, 6, 8, 10, 12])
    end
  end
  #=end

  #=begin
  describe '#my_all?' do
    let(:only_block1) { proc { |x| x > 6 } }
    let(:only_block2) { proc { |x| x > 1 } }
    it 'return true only if all of the array items respond to the condition \
      in given block' do
      expect(arr1.all?(&only_block1)).to eql(false)
    end
    it 'return true only if all of the array items respond to the condition \
      in given block' do
      expect(arr1.all?(&only_block2)).to eql(true)
    end
  end
  #=end

  #=begin
  describe '#my_count' do
    let(:arr2) { [2, 4, 2, 8, 10, 12] }
    let(:arr3) { [2, 4, 3, 8, 10, 13] }
    let(:count_block) { proc { |x| x.even? } }
    it 'if no parameter given, it return the number of the array items' do
      expect(arr1.my_count).to eql(6)
    end
    it 'if a parameter given, it return how many times that parameter exist \
      in the array' do

      expect(arr2.my_count(2)).to eql(2)
    end
    it 'if a parameter given, it return how many times that parameter exist \
      in the array' do

      expect(arr2.my_count(20)).to eql(0)
    end
    it 'if a block given, it return how many items that realize the \
      block condition' do
      expect(arr3.my_count(&count_block)).to eql(4)
    end
  end
  #=end

  #=begin
  describe '#my_map' do
    let(:arr) { %w[a r r a y] }
    let(:map_block) { proc { |x| x + x } }
    it 'it return a new array ,each item modified by the block from \
    the origin method' do
      expect(arr.my_map(&map_block)).to eql(%w[aa rr rr aa yy])
    end
  end
  #=end

  #=begin
  describe '#my_inject' do
    let(:arr) { [2, 4, 6, 8, 10] }
    let(:inject_block1) { proc { |total, n| total * n } }
    let(:inject_block2) { proc { |total, n| total + n } }

    it 'it return accumulated result after iterating the array items using \
      a block and an initial value' do
      expect(arr.my_inject(1, &inject_block1)).to eql(3840)
    end
    it 'it return accumulated result after iterating the array items using \
      a block and an initial value' do
      expect(arr.my_inject(0, &inject_block2)).to eql(30)
    end
  end
  #=end
end
