require 'minitest/autorun'
require './Factorial_x_n'
require 'minitest/spec'

describe 'TestFactorial' do
  before do
    @factor = NumberFactor.new(7)
  end
  it "factorial of 7" do
    @factor.factorial.must_equal 5040
  end
  it "Factorial isn`t a string" do
    (@n).wont_respond_to (:upcase) 
  end
end
