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
    expect(number_list).to match_array [1,2,3,4,5,6,7,8,9,10]
  end

  it "should calculate aummary" do
    expect(@score.get_sum).to eq 55
  end

  it "should calculate average" do
    expect(@score.get_ave).to eq 5.5
  end
end
