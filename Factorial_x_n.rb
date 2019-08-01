class TypeError < StandardError; end
class NumberFactor
  def initialize(n)
    @n = error_not_number(n)
  end
  def valid_integer?(n)
    n.is_a? Integer && n > 0 && n != n.nil?
  end
  def error_not_number(n)
    raise TypeError, 'MUST BE A INTEGER NUMBER' unless valid_integer?(n)
    n
  end
  def factorial
    (1..@n).inject(1){ |fac,i| fac * i}
  end
end
