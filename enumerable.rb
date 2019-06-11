# frozen_string_literal: true

# The enumerable module contains the iterator methods.
module Enumerable
  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
    self
  end
  # arr=[1,2,3,4,5,6]
  # arr.my_each{|x| puts "#{x}!" }

  def my_each_with_index
    i = 0
    while i < size
      yield(self[i], i)
      i += 1
    end
    self
  end
  # arr=[2,4,6,8,10,12]
  # arr.my_each_with_index{|x,i| puts "#{x},#{i}!"}

  def my_select
    selected = []
    my_each do |item|
      selected.push(item) if yield(item)
    end
    selected
  end
  # arr=[2,4,6,8,10,12]
  # puts arr.my_select{|x| x > 6}

  def my_all?
    result = true
    my_each do |item|
      result = false unless yield(item)
    end
    result
  end
  # arr=[2,4,6,8,10,12]
  # puts arr.my_all?{|x| x > 6}
  # puts arr.my_all?{|x| x > 1}

  def my_any?
    result = false
    my_each do |item|
      result = true if yield(item)
    end
    result
  end
  # arr=[2,4,6,8,10,12]
  # puts arr.my_any?{|x| x > 6}
  # puts arr.my_any?{|x| x > 15}

  def my_none?
    result = true
    my_each do |item|
      result = false if yield(item)
    end
    result
  end
  # arr=[2,4,6,8,10,12]
  # puts arr.my_none?{|x| x > 6}
  # puts arr.my_none?{|x| x > 12}

  def my_count(item = nil)
    counter = 0
    if !item.nil?
      my_each { |current| counter += 1 if current == item }
    elsif block_given?
      my_each { |current| counter += 1 if yield(current) }
    else
      counter = length
    end
    counter
  end
  # arr=[2,4,2,8,10,12]
  # puts arr.my_count{|x| x == 2}
  # puts arr.my_count{|x| x >= 12}

  def my_map(proc = nil)
    result = []
    if proc
      my_each { |current| result << proc.call(current) }
    elsif proc.nil? && block_given?
      my_each do |current|
        result << yield(current)
      end
    end
    result
  end

  def my_inject(initial = 0)
    accumulator = initial
    my_each do |current|
      accumulator = yield(accumulator, current)
    end
    accumulator
  end

  def multiply_els
    my_inject(1) { |total, n| total * n }
  end
end
# arr=[2,4,2,8,10,12]
# puts arr.multiply_els
