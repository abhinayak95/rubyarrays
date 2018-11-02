require_relative "ruby_arrays.rb"
include Arrays

begin
  puts Arrays.array_sum([1, 2, 3, 4])
rescue TypeError
  puts "Enter Correct type"
end


puts Arrays.arr_sequential_generator(5).to_s

puts Arrays.arr_multple_of_ten(3).to_s

puts Arrays.arr_divisibleby_3_and_5().to_s

# puts Array.arr_multidimenstion.to_s

# puts Arrays.arr_fib().to_s
