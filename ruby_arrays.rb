module Arrays

  # Create an array of the numbers 1 though 100 (i.e. [1, 2, 3, ..., 99, 100]).
  def self.arr_generator
    i= 0
    return Array.new(100){ i+= 1}
  end

  # Sum all the elements in the numbers array.
  def self.array_sum(arr)
    sum = 0
    for num in arr
      sum += num
    end
    return sum
  end
  
end
