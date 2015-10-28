def add(nb1, nb2)
  return nb1 + nb2
end

def subtract(nb1, nb2)
  return nb1 - nb2
end

def sum(array)
  if (array.length == 0)
    return 0
  else
   return array.inject{|sum,x| sum + x}
  end
end

def multiply(nb1, nb2)
  return nb1 * nb2
end

def multiply2(*numbers)
  return numbers.inject { |sum,x| sum * x}
end
=begin or :
def multiply2(*numbers) #with the * the list of numbers will be convert in an array
  result = 1
  numbers.each do |i|
    result *= i
  end
  return result
end
=end

def power(nb1, nb2)
  return nb1 ** nb2
end

def factorial(nb)
  if nb == 0
    return 1
  end

  comp = 1
  (1..nb).each do |i|
    comp *= i
  end

  return comp
end
