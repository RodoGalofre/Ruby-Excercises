class NumberFactor
  def initialize (n)
    @n = n 
  end
  def factorial
    (1..@n).inject(1){ |fac,i| fac * i}
  end
end

factor = NumberFactor.new(7)
