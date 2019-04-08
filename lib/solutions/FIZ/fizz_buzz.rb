# noinspection RubyUnusedLocalVariable
class FizzBuzz
  def fizz_buzz(number)
    result = []

    result.push('fizz') if (number % 3).zero? || number.to_s.include?('3')

    result.push('buzz') if (number % 5).zero? || number.to_s.include?('5')

    result.empty? ? number : result.join(' ')
  end
end
