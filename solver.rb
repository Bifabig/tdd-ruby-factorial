class Solver
  def calculate(num, result, first_num)
    num_factorial = num - 1
    result *= num_factorial
    return result * first_num if num_factorial == 1

    calculate(num_factorial, result, first_num)
  end

  def factorial(num)
    return 1 if num.zero?

    return raise 'Invalid Number' if num.negative?

    calculate(num, 1, num)
  end

  def fizzbuzz(val)
    if (val % 15).zero?
      'fizzbuzz'
    elsif (val % 3).zero?
      'fizz'
    elsif (val % 5).zero?
      'buzz'
    else
      val.to_s
    end
  end
end
