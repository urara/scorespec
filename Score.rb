class Score
  def initialize(filename)
    @number_list = []
    file = open(filename)
    file.each_line do |line|
      @number_list.push line.to_i
    end
  end

  def get_number_list
    @number_list
  end

  def get_sum
    @number_list.inject(0) {|i, sum| sum += i}
  end

  def get_ave
    get_sum / @number_list.size.to_f
  end

  def get_multi_array (num)
    if num > 0 then
      number_list = get_number_list
      number_list.map{|i| i * num}
    else
      raise ArgumentError
    end
  end
end
