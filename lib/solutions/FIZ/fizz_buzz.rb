# noinspection RubyUnusedLocalVariable
class FizzBuzz
  def fizz_buzz(number)
    result = []

    result.push('fizz') if (number % 3).zero? || number.to_s.include?('3')

    result.push('buzz') if (number % 5).zero? || number.to_s.include?('5')

    result.push('deluxe') if (number > 10)
    result.empty? ? number : result.join(' ')
  end

  def is_deluxe? (number)

  end

  def all_same_digits? (number)
    ary_of_chars = number.to_s.chars

    arr_of
  end
end

