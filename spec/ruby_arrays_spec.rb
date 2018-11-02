require_relative "../ruby_arrays.rb"

RSpec.describe Arrays, "#arr_sequential_generator" do
  context "given the size " do
    it "returns an array with elements starting from 1 to the size" do
      result = Arrays.arr_sequential_generator(5)
      expect(result).to eq [1, 2, 3, 4, 5]
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([])
      expect(result).to eq 0
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([-1, -2, -3, -4])
      expect(result).to eq -10
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([1, -2, 3, -4])
      expect(result).to eq -2
    end
    it "Throws an error if incorrect datatype is inserted" do
      expect {
        result = Arrays.array_sum([1, -2, 'cat', -4])
      }.to raise_error(TypeError)
    end
  end
end

RSpec.describe Arrays, "#sum" do
  context "given an array" do
    it "adds all the elements of the array" do
      result = Arrays.array_sum([1, 2, 3, 4])
      expect(result).to eq 10
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([])
      expect(result).to eq 0
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([-1, -2, -3, -4])
      expect(result).to eq -10
    end
    it "adds all the elements of the array" do
      result = Arrays.array_sum([1, -2, 3, -4])
      expect(result).to eq -2
    end
    it "Throws an error if incorrect datatype is inserted" do
      expect {
        result = Arrays.array_sum([1, -2, 'cat', -4])
      }.to raise_error(TypeError)
    end
  end
end


RSpec.describe Arrays, "#arr_multple_of_ten" do
  context "given a size" do
    it "returns an array with elemtnts being multiple of 10 of previous element" do
      result = Arrays.arr_multple_of_ten(2)
      expect(result).to eq [1.0, 10.0]
    end
    it "returns an empty array for size zero" do
      result = Arrays.arr_multple_of_ten(0)
      expect(result).to eq []
    end
    it "Throws an error if negative number for size is provided" do
      expect {
        result = Arrays.arr_multple_of_ten(-1)
      }.to raise_error(ArgumentError)
    end
  end
end
