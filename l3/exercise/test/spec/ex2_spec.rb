require_relative '../ex2'
describe "Test Exercise 2" do
  context "calculate 4 maths right" do
    it "add integer" do
      expect(calculate(1,2,:add)).to eq 3
    end

    it "add float" do
      expect(calculate(3.2, 4.2, :add)).to eq 7.4
    end

    it "subtract integer" do
      expect(calculate(1,2, :sub)).to eq -1
    end

    it "subtract float" do
      expect(calculate(4.5, 2.3, :sub)).to eq 2.2
    end

    it "multiple integer" do
      expect(calculate(2,3, :mul)).to eq 6
    end

    it "multiple float" do
      expect(calculate(3.2, 4.2, :mul).round(2)).to eq 13.44
    end

    it "divide integer" do 
      expect(calculate(4,5,:div)).to eq 0.8
    end

    it "divide float" do
      expect(calculate(3.0, 2.0, :div)).to eq 1.5
    end
  end

  context "wrong input check" do
    it "wrong first param" do
      expect(calculate("a", 3, :add)).to eq nil
    end

    it "wrong second param" do
      expect(calculate(3, "a", :add)).to eq nil
    end

    it "wrong third param" do
      expect(calculate(2, 3, "abc")).to eq nil
    end

    it "wrong all params" do 
      expect(calculate("a", "b", "c")).to eq nil
    end
  end
end
