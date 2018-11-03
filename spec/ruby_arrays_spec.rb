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
    xit "Throws an error if negative number for size is provided" do
      expect {
        result = Arrays.arr_multple_of_ten(-1)
      }.to raise_error(ArgumentError)
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
