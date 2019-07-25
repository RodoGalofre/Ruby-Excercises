class NumberFactor
  def factorial(n)
    (1..n).inject(1){ |fac,i| fac * i}
  end
end

factor = NumberFactor.new
puts factor.factorial(7)

 