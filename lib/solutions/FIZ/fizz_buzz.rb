# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    result = Array.new
    result.push('fizz') if (number % 3).zero?
    result.push('buzz') if (number % 5).zero?


    return result.join(' ')
  end

end

