require_relative "ruby_arrays.rb"
include Arrays

puts Arrays.sum([1, 2, 3, 4])

puts Arrays.sequence_generator(5).to_s

puts Arrays.multple_of_ten(3).to_s

puts Arrays.divisibleby_3_and_5().to_s

# puts Array.arr_multidimenstion.to_s

# puts Arrays.arr_fib().to_s

puts Arrays.combination(['1','2','3'], ['4','5','6']).to_s

puts Arrays.two_elements_generator(['mon', 'tues', 'wed', 'thur', 'fri'], 0, 2).to_s

puts Arrays.search_string(['batman', 'manbot', 'mace', 'tulip', 'nah man, nah'], 'man').to_s

puts [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']].to_h
