require 'minitest/autorun'
require './sum_square_diference'
require 'minitest/spec'
require "minitest-spec-context"

describe SumSquares, 'sum square diference exercise test' do
  context 'when the class is initialize with 100' do
    it "is outcome 25164150" do
      squares = SumSquares.new(100)
      squares.square_diferences.must_equal(25164150)
    end
  end
  context "when the method is_a_number? not have a number" do
    it "its return this error" do
      err = lambda {squares = SumSquares.new('efet')}.must_raise (TypeError)
      err.message.must_match('That isn`t a number')
    end
  end
end
