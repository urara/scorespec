require './Score'

describe Score do
  before(:example) do
    @score = Score.new("data.txt")
  end

  it "should be an instance of score" do
    expect(@score).to be_an_instance_of Score
  end

  it "should get number list" do
    number_list = @score.get_number_list
    expect(number_list).to be_an_instance_of Array
    expect(number_list.size).to eq 10
    expect(number_list).to match_array [1,2,3,4,5,6,7,8,9,10]
  end

  it "should calculate aummary" do
    expect(@score.get_sum).to eq 55
  end

  it "should calculate average" do
    expect(@score.get_ave).to eq 5.5
  end

  describe "#get_multi_array" do
    context "正常系" do
      it "2を渡したら各要素が2倍されたarrayを返す" do
        expect(@score.get_multi_array(2)).to match_array [2,4,6,8,10,12,14,16,18,20]
      end
      it "3を渡したら各要素が3倍されたarrayを返す" do
        expect(@score.get_multi_array(3)).to match_array [3,6,9,12,15,18,21,24,27,30]
      end
    end
    context "異常系" do
      it "負の数を渡したらArgumentErrorを返す" do
        expect{@score.get_multi_array(-1)}.to raise_error ArgumentError
      end
    end
  end
end
