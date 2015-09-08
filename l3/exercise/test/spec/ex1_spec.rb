require_relative '../ex1'
describe "Test Exercise 1" do
  context "Input date right format" do
    before :each do
      @string = "Input time is $1. The day after this day is $2"
    end

    it "input now time" do
      now_time = Time.now
      data = now_time.strftime('%Y-%m-%d %H:%M:%S')
      expected_result = @string.gsub("$1", now_time.strftime('%Y-%m-%d %H:%M:%S')).gsub("$2", (now_time +86400).strftime("%Y-%m-%d"))
      expect(display_date(data)).to eq expected_result
    end

    it "input normal day" do
      now_time = '2012-07-30 20:00:00'
      expected_result = @string.gsub("$1", now_time).gsub("$2", '2012-07-31')
      expect(display_date(now_time)).to eq expected_result
    end

    it "input last day of month 30" do
      now_time = '2012-06-30 20:00:00'
      expected_result = @string.gsub("$1", now_time).gsub("$2", '2012-07-01')
      expect(display_date(now_time)).to eq expected_result
    end

    it "input last day of month 31" do
      now_time = '2012-12-31 20:00:00'
      expected_result = @string.gsub("$1", now_time).gsub("$2", '2013-01-01')
      expect(display_date(now_time)).to eq expected_result
    end

    it "input leap year" do
      now_time = '2012-02-29 20:00:00'
      expected_result = @string.gsub("$1", now_time).gsub("$2", '2012-03-01')
      expect(display_date(now_time)).to eq expected_result
    end
  end

  context "Input date wrong format" do
    it "input integer" do
      data = 1
      expect(display_date(data)).to eq "Input is not a time : 1"
    end

    it "input string" do
      data = "hello"
      expect(display_date(data)).to eq "Input is not a time : hello"
    end
  end
end
