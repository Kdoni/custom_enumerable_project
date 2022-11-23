module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

class Array
  def initialize(*args)
    @fake_array = args.flatten
  end

  def my_each(&block)
    @fake_array.my_each(&block)
    self
  end
end
