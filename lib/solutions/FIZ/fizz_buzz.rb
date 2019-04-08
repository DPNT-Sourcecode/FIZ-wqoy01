# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    result = Array.new
    result.push('fizz') if number % 3

    return result.join(' ')
  end

end
