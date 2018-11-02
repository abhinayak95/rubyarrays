require_relative "ruby_arrays.rb"
include Arrays

begin
  puts Arrays.array_sum([1, 2, 3, 4])
rescue TypeError
  puts "Enter Correct type"
end


puts Arrays.arr_generator().to_s
