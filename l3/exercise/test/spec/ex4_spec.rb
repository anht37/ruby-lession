require_relative '../ex4'
describe "Test Exercise 4" do
  context "Filter right way" do
    before :each do
      @test_ary = (1..10).to_a
    end
    it "select even element" do
      expect(array_filter(@test_ary, :even)).to eq [2,4,6,8,10]
    end

    it "select odd element" do
      expect(array_filter(@test_ary, :odd)).to eq [1,3,5,7,9]
    end

    it "can filter empty array even" do
      expect(array_filter([], :even)).to eq []
    end

    it "can filter empty array odd" do
      expect(array_filter([], :odd)).to eq []
    end
  end

  context "Wrong input" do
    it "wrong array param" do
      expect(array_filter(123, :even)).to eq nil
    end

    it "wrong type param" do
      expect(array_filter([1,2,3], 1)).to eq nil
    end

    it "wrong all params" do
      expect(array_filter(1, 1)).to eq nil
    end
  end
end
