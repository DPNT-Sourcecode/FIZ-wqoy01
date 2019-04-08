# noinspection RubyUnusedLocalVariable
class FizzBuzz
  def fizz_buzz(number)
    result = []

    result.push('fizz') if (number % 3).zero? || number.to_s.include?('3')

    result.push('buzz') if (number % 5).zero? || number.to_s.include?('5')

    result.push('deluxe') if deluxe?(number)
    result.empty? ? number : result.join(' ')
  end

  def deluxe?(number)
    (number > 10) && all_same_digits?(number)
  end

  def all_same_digits?(number)
    ary_of_chars = number.to_s.chars
    ary_of_chars.all? { |digit| digit == ary_of_chars[0] }
  end
end



