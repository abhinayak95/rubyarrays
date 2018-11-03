module Arrays

  # colors = ['red', 'violet', 'blue']
  # Use the colors array to construct the following array:
  # def arr_multidimension
  #   colors = ['red', 'violet', 'blue']
  #   i = 0
  #   arr = Array.new(colors.length) {Array.new(2) {colors[i += 1]}}
  #   return arr
  # end

  # Create an array of the numbers 1 though 100 (i.e. [1, 2, 3, ..., 99, 100]).
  def self.sequence_generator(size)
    i= 0
    return Array.new(size){ i+= 1 }
  end

  # fib = [0, 1]
  # Use fib to create the following array: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] Notice that these are the first ten numbers in the Fibonocci sequence and each number equal the sum of the prior two numbers.
  # def arr_fib
  #   fib = [0, 1]
  #   index = -1
  #   arr = Array.new(10) {
  #     index += 1
  #     if fib[index]
  #       fib[index]
  #     else
  #       arr[index - 1] + arr[index - 2]
  #     end
  #     }
  #
  # end
  # def arr_fib
  #   fib = [0, 1]
  #   arr = Array.new(10)
  #   arr.push(..fib)
  #   return arr
  # end

  # Create an array of all the numbers between 1 and 100 that are divisible by both 3 and 5.
  def self.divisibleby_3_and_5
    arr = Array.new()
    for index in 1..100
      if index % 3 == 0 and index % 5 == 0
        arr.push(index)
      end
    end
    return arr
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
  end

  def self.two_elements_generator(arr, first_index, second_index)
    return [arr[first_index.to_i],arr[second_index.to_i]]
  end

  def self.search_string(arr, search)
    result = arr.select { |string| string.include? search}
    return result
  end
end
