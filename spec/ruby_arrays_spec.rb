require_relative "../ruby_arrays.rb"

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
    xit "handles the error" do
      result = Arrays.array_sum([1, -2, 'cat', -4])
      expect(result).to eq -2
    end
  end
end
