require_relative 'my_list'

# Creates an instance of the 'MyList' class and initializes it with the given values as elements.
list = MyList.new(1, 2, 3, 4)

# Calls the 'all?' method on the 'list' object with a block as an argument.
# Then the block checks if all elements in the list are less or greater than 5.
puts(list.all? { |e| e < 5 }) # less
puts(list.all? { |e| e > 5 }) # greater

# Calls the 'any?' method on the 'list' object and checks if any element in the list is equal to 2 or 5.
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

# Return a new list containing only the even elements
p list.filter(&:even?)