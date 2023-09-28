module MyEnumerable
    def all? #Method that checks if all elements meet a given condition.
      each { |element| return false unless yield element }
      true
    end
    def any? #Method that checks if any elements meet a given condition.
      each { |element| return true if yield element }
      false
    end
    def filter #Method that filters elements based on a given condition.
      result = []
      each { |element| result << element if yield element }
      result
    end
  end