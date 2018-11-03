require_relative "ruby_arrays.rb"
include Arrays

puts Arrays.sum([1, 2, 3, 4])

puts Arrays.sequence_generator(5).to_s

puts Arrays.multple_of_ten(3).to_s

puts Arrays.divisibleby_3_and_5().to_s

puts Arrays.combination(['1','2','3'], ['4','5','6']).to_s

puts Arrays.two_elements_generator(['mon', 'tues', 'wed', 'thur', 'fri'], 0, 2).to_s

puts Arrays.search_string(['batman', 'manbot', 'mace', 'tulip', 'nah man, nah'], 'man').to_s

puts Arrays.index_element([['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']], 1).to_s

puts Arrays.to_hashes([['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]).to_s

puts Arrays.filter_even([1, 2, 3, -4, 10, -20, 33, 35]).to_s

puts Arrays.element_index_generator(['red', 'violet', 'blue']).to_s
