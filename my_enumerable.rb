module MyEnumerable
  # Method that checks if all elements meet a given condition.
  def all?
    each { |element| return false unless yield element }
    true
  end

  # Method that checks if any elements meet a given condition.
  def any?
    each { |element| return true if yield element }
    false
  end

  # Method that filters elements based on a given condition.
  def filter
    result = []
    each { |element| result << element if yield element }
    result
  end
end
