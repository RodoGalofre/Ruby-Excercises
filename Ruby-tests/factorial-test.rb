require 'minitest/autorun'
require './Factorial_x_n'
require 'minitest/spec'

describe 'TestFactorial' do
  it "factorial of 7" do
    factor.factorial(7).must_equal 5040
  end
end