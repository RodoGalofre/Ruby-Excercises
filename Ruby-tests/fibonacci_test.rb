require 'minitest/autorun'
require './Fibonacci_numbers_par'
require 'minitest/spec'

describe FibonacciSums, 'Pars to limit fiibonacci' do
  it 'is a numbers' do
    sums = FibonacciSums.new(4000000)
    sums.sum_fibonacci_even.must_equal (4613732)
  end
  
end
