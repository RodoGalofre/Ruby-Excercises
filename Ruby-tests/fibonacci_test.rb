require 'minitest/autorun'
require './Fibonacci_numbers_par'
require 'minitest/spec'

describe FibonacciSums, 'Pars to limit fiibonacci' do
  context 'when the class is initialize with 7' do
    it 'sums_fibonacci_even is equal to 4613732' do
      sums = FibonacciSums.new(4000000)
      sums.sum_fibonacci_even.must_equal (4613732)
    end
  end
end
