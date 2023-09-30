require_relative 'my_enumerable'

# class
class MyList
  include MyEnumerable # module

  # constructor
  def initialize(*elements)
    @list = elements
  end

  # each method to iterate
  def each(&block)
    @list.each(&block)
  end
end
