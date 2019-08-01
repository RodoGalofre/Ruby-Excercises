require 'minitest/autorun'
require './sum_square_diference'
require 'minitest/spec'

describe SumSquares, 'sum square diference exercise test' do
  context 'when the class is initialize with 100' do
  it 'is outcome 25164150' do
    squares = SumSquares.new(100)
    squares.square_diferences.must_equal (25164150)
  end
end
context 'when the method is_a_number? not have a number' do
  it "its return false" do
    squares = SumSquares.new(1)
    squares.is_a_number?('mmmm').must_equal (false)
  end
 end
end
