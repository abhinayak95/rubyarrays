module Arrays

  # Create an array of the numbers 1 though 100 (i.e. [1, 2, 3, ..., 99, 100]).
  def self.sequence_generator(size)
    i= 0
    return Array.new(size){ i+= 1 }
  end

  # Create an array of all the numbers between 1 and 100 that are divisible by both 3 and 5.
  def self.divisibleby_3_and_5
    return Array(1..100).select {|element| element % 3 == 0 && element % 5 == 0}
  end
  # players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
  # Use the players array to construct the following array: ["kelly", "cent", "cyrus"]
  # def self.arr_construct
  # end
  # Sum all the elements in the numbers array.
  def self.sum(arr)
    return arr.reduce(0) { |sum, num| sum + num}
  end

  #   Create the following array:
  # [1, 10, 100, 1_000, 10_000, 100_000, 1_000_000]
  # Notice that every element of the array is equal to the previous element times ten.
  def self.multple_of_ten(size)
    i = 0.1
    return Array.new(size) { i *= 10 }
  end

  def self.combination(first_arr, second_arr)
    result_arr = []
    first_arr.each {|first_arr_element|
      second_arr.each {|second_arr_element|
        result_arr.push([first_arr_element, second_arr_element])
      }
    }
    return result_arr
    # return first_arr.map {|element| [element, second_arr[first_arr.index(element)]]}
  end

  def self.two_elements_generator(arr, first_index, second_index)
    return [arr[first_index.to_i],arr[second_index.to_i]]
  end

  def self.search_string(arr, search)
    result = arr.select { |string| string.include? search}
    return result
  end

  def self.index_element(arr, index)
    result = arr.map { |sub_arr| sub_arr[index]}
  end

  def self.to_hashes(arr)
    return arr.to_h
  end

  def self.filter_even(arr)
    # return arr.select { |element| element.even?}
    return arr.select { |element| element % 2 == 0}
  end

  # colors = ['red', 'violet', 'blue']
  # Use the colors array to construct the following array:
  # [['red', 1], ['violet', 2], ['blue', 3]]
  def self.element_index_generator(arr)
    return arr.map { |element| [element, arr.index(element)+1]}
  end




end
