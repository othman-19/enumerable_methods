# frozen_string_literal: true

# spec/calculator_spec.rb
#require File.expand_path('./enumerable.rb')
require File.expand_path('../enumerable.rb')

RSpec.describe Enumerable do
  #=begin
  describe '#my_each_with_index' do
    let(:arr){[2, 4, 6]} 
    let (:result){[]}
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
    let(:arr) {[2, 4, 6, 8, 10, 12]}
    it 'return a new array with asked condition in given block' do
      expect(arr.my_select { |x| x > 6 }).to eql([8, 10, 12])
    end
    it 'Do not chenge the original array' do
      arr.my_select { |x| x > 6 }
      expect(arr).to eql([2, 4, 6, 8, 10, 12])
    end
  end
  #=end

  #=begin
  describe '#my_all?' do
    let(:arr) {[2, 4, 6, 8, 10, 12]}
    it 'return true only if all of the array items respond to the condition \
      in given block' do
      expect(arr.all? { |x| x > 6 }).to eql(false)
    end
    it 'return true only if all of the array items respond to the condition \
      in given block' do
      expect(arr.all? { |x| x > 1 }).to eql(true)
    end
  end
  #=end

  #=begin
  describe '#my_count' do
    let(:arr1) {[2, 4, 6, 8, 10, 12]}
    let(:arr2) {[2, 4, 2, 8, 10, 12]}
    let(:arr3) {[2, 4, 3, 8, 10, 13]}

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
      expect(arr3.my_count(&:even?)).to eql(4)
    end
  end
  #=end

  #=begin
  describe '#my_map' do
  let(:arr)  {%w[a r r a y]}
    it 'it return a new array ,each item modified by the block from \
    the origin method' do
      expect(arr.my_map { |x| x + x }).to eql(%w[aa rr rr aa yy])
    end
  end
  #=end

  #=begin
  describe '#my_inject' do
    let(:arr){[2, 4, 6, 8, 10]}
    it 'it return accumulated result after iterating the array items using \
      a block and an initial value' do
      expect(arr.my_inject(1) { |total, n| total * n }).to eql(3840)
    end
    it 'it return accumulated result after iterating the array items using \
      a block and an initial value' do
      expect(arr.my_inject(0) { |total, n| total + n }).to eql(30)
    end
  end
  #=end
end
