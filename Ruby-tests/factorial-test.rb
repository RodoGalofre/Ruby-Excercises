require 'minitest/autorun'
require './Factorial_x_n'
require 'minitest/spec'
require "minitest-spec-context"

describe NumberFactor, 'Factorial test' do
  context 'if class is initialized with 7' do
    it "must be 5040" do
      factor = NumberFactor.new(7)
      factor.factorial.must_equal 5040
    end
  end
  context 'if class isn`t initialized with a integer' do
    it "must be error 'MUST BE A INTEGER NUMBER" do
      err = lambda {factor = NumberFactor.new('g')}.must_raise (TypeError)
      err.message.must_match('MUST BE A INTEGER NUMBER')
    end
  end
end