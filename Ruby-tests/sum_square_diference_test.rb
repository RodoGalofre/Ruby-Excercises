require 'minitest/autorun'
require './sum_square_diference'
require 'minitest/spec'

describe SumSquares, 'sum square diference exercise test' do
  it 'is outcome-output' do
    squares = SumSquares.new(100)
    squares.square_diferences.must_equal (25164150)
  end
  it "rang is not a number" do
    squares = SumSquares.new(1)
    squares.is_a_number?('mmmm').must_equal (false)
  end
end
