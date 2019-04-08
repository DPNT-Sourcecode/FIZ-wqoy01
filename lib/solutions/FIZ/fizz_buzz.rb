# noinspection RubyUnusedLocalVariable
class FizzBuzz
  def fizz_buzz(number)
    result = []

    result.push('fizz') if (number % 3).zero?
    result.push('buzz') if (number % 5).zero?

    result.empty? ? number : result.join(' ')
  end
end



