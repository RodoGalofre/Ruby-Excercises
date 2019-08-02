require 'minitest/autorun'
require './10001stPrime'
require 'minitest/spec'
require "minitest-spec-context"

describe TenThousandPrimes, '10001st Prime test' do
  context 'if the argument isn`t initialize with a Integer' do
    it "must be return: ERROR INVALID ARGUMENT: Detected 0, negative number or String " do
      err = lambda {primes = TenThousandPrimes.new('hola')}.must_raise (ArgumentError)
      err.message.must_match('ERROR INVALID ARGUMENT: Expected 0, negative number or String')
    end
  end
  context 'to find 10001st prime factor' do
    it "Class must be initialize in 10001" do
      primes = TenThousandPrimes.new(10001)
      primes.show_prime.must_equal 104743
    end
  end
end