require_relative 'my_enumerable'

class MyList #class
  include MyEnumerable #module

  def initialize(*elements) #constructor
    @list = elements
  end

  def each(&block) #each method to iterate
    @list.each(&block)
  end
  
end