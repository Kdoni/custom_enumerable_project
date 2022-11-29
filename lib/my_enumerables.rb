module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    while index < length
      yield(self[index], index)
      index += 1
    end
    self
  end

  def my_all?
    index = 0
    while index < length
      if yield(self[index]) == false
        return false
      else
        index += 1
      end
    end
    true
  end

  def my_any?
    index = 0
    while index < length
      if yield(self[index]) == true
        return true
      else
        index += 1
      end
    end
    false
  end

  def my_count
    index = 0
    counter = 0
    if block_given?
      while index < length
        counter += 1 if yield(self[index]) == true
        index += 1
      end
      return counter
    end
    length
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

class Array
  include Enumerable
  def my_each
    index = 0
    while index < length
      yield(self[index])
      index += 1
    end
    self
  end
end
