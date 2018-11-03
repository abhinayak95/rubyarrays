require_relative "../ruby_arrays.rb"

RSpec.describe Arrays, "#sequence_generator" do
  context "given the size " do
    it "returns an array with elements starting from 1 to the size" do
      result = Arrays.sequence_generator(5)
      expect(result).to eq [1, 2, 3, 4, 5]
    end
    it "returns an empty array if size is 0" do
      result = Arrays.sequence_generator(0)
      expect(result).to eq []
    end
    it "throws an error if the size is negative" do
      expect {
        result = Arrays.sequence_generator(-1)
      }.to raise_error(ArgumentError)
    end
  end
end

RSpec.describe Arrays, "#sum" do
  context "given an array" do
    it "adds the elements in the case of array elements being entirely positive" do
      result = Arrays.sum([1, 2, 3, 4])
      expect(result).to eq 10
    end
    it "adds the elements in the case of array elements being entirely negative" do
      result = Arrays.sum([-1, -2, -3, -4])
      expect(result).to eq -10
    end
    it "adds the elements of the array in when both positive and negative elements are involved" do
      result = Arrays.sum([1, -2, 3, -4])
      expect(result).to eq -2
    end
    it "returns zero when an empty array is passed" do
      result = Arrays.sum([])
      expect(result).to eq 0
    end
    it "Throws an error if incorrect datatype is inserted" do
      expect {
        result = Arrays.sum([1, -2, 'cat', -4])
      }.to raise_error(TypeError)
    end
  end
end


RSpec.describe Arrays, "#multple_of_ten" do
  context "given a size" do
    it "returns an array with elemtnts being multiple of 10 of previous element" do
      result = Arrays.multple_of_ten(2)
      expect(result).to eq [1.0, 10.0]
    end
    it "returns an empty array for size zero" do
      result = Arrays.multple_of_ten(0)
      expect(result).to eq []
    end
    it "Throws an error if negative number for size is provided" do
      expect {
        result = Arrays.multple_of_ten(-1)
      }.to raise_error(ArgumentError)
    end
  end
end

RSpec.describe Arrays, "#combination" do
  context "given two arrays" do
    it "returns a multidimension array with array size being the product size of other two arrays" do
      result = Arrays.combination(['1'], ['4','5','6'])
      expect(result).to eq [['1', '4'], ['1', '5'], ['1', '6']]
    end
    it "returns a multidimension array with array size being the product size of other two arrays" do
      first_arr = ['1','2','3','4','5','6']
      second_arr = ['1','2','3','4','5','6']
      result = Arrays.combination(first_arr, second_arr)
      expect(result.length).to eq first_arr.length * second_arr.length
    end
    xit "returns a multidimension array containing single element array when one of the array is empty" do
      first_arr = ['1','2','3']
      second_arr = []
      result = Arrays.combination(first_arr, second_arr)
      expect(result).to eq [['1'], ['2'], ['3']]
    end
    it "returns an empty array when both arrays are empty" do
      first_arr = []
      second_arr = []
      result = Arrays.combination(first_arr, second_arr)
      expect(result).to eq []
    end
  end
end

RSpec.describe Arrays, "#two_elements_generator" do
  context "given an array and two indices" do
    it "returns an array with elements on selected indices" do
      result = Arrays.two_elements_generator(['mon', 'tues', 'wed', 'thur', 'fri'], 0, 2)
      expect(result).to eq ['mon', 'wed']
    end
    it "returns an array even when the indices being in string format" do
      result = Arrays.two_elements_generator(['mon', 'tues', 'wed', 'thur', 'fri'], '0','2')
      expect(result).to eq ['mon', 'wed']
    end
    xit "Throws an error if negative number for size is provided" do
      expect {
        result = Arrays.arr_multple_of_ten(-1)
      }.to raise_error(ArgumentError)
    end
  end
end

RSpec.describe Arrays, "#search_string" do
  context "given an array and a string" do
    it "returns an array with elements having the search string" do
      result = Arrays.search_string(['batman', 'manbot', 'mace', 'tulip', 'nah man, nah'], "man")
      expect(result).to eq ["batman", "manbot", "nah man, nah"]
    end
    it "returns an empty array when no element includes the search string" do
      result = Arrays.search_string(['batman', 'manbot', 'mace', 'tulip', 'nah man, nah'], "name")
      expect(result).to eq []
    end
    it "returns an array with elements having the search string" do
      result = Arrays.search_string(['batman', 'manbot', 'mace', 'tulip', 'nah man, nah'], "man")
      expect(result).to eq ["batman", "manbot", "nah man, nah"]
    end
  end
end

RSpec.describe Arrays, "#index_element" do
  context "given an array and the index" do
    it "returns an array with elements having provided index in the sub array" do
      result = Arrays.index_element([['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']], 1)
      expect(result).to eq  ["kelly", "cent", "cyrus"]
    end
    it "returns an array with elements having provided index in the sub array" do
      result = Arrays.index_element([['r', 'kelly'], ['50'], ['miley']], 1)
      expect(result).to eq  ["kelly", nil, nil]
    end
    it "returns an array with nil when the index is out of bounds" do
      result = Arrays.index_element([['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']], 10)
      expect(result).to eq  [nil, nil, nil]
    end
  end
end

RSpec.describe Arrays, "#to_hashes" do
  context "given a multidimensional array with sub arrays of length 2" do
    it "returns a hash with key value pair for every sub array" do
      result = Arrays.to_hashes([['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']])
      expect(result).to eq ({
        "will smith" => "i am legend",
        "brad pitt" => "fight club",
        "frodo" => "the hobbit"
      })
    end
  end
end

RSpec.describe Arrays, "#filter_even" do
  context "given an array" do
    it "returns an array with only even integers" do
      result = Arrays.filter_even([1, 2, 3, 4, 10, 20, 33, 35])
      expect(result).to eq [2, 4, 10, 20]
    end
    it "returns an empty array when array contains only odd elements" do
      result = Arrays.filter_even([1, 3, 33, 35])
      expect(result).to eq []
    end
    it "returns an empty array for empty input array" do
      result = Arrays.filter_even([])
      expect(result).to eq []
    end
    it "returns an array with only even integers, including the negative even integers" do
      result = Arrays.filter_even([1, 2, 3, -4, 10, -20, 33, 35])
      expect(result).to eq [2, -4, 10, -20]
    end
  end
end

RSpec.describe Arrays, "#element_index_generator" do
  context "given an array" do
    it "returns an array with each element as a sub array alont with a sequence integer" do
      result = Arrays.element_index_generator(['red', 'violet', 'blue'])
      expect(result).to eq [['red', 1], ['violet', 2], ['blue', 3]]
    end
  end
end
