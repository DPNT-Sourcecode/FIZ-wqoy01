# noinspection RubyUnusedLocalVariable
class FizzBuzz
  def fizz_buzz(number)
    result = []
    
    result.push('fizz') if (number % 3).zero? || number.to_s.include?('3')
    
    result.push('buzz') if (number % 5).zero? || number.to_s.include?('5')
    
    if deluxe?(number)
      chars = number.to_s.chars
      if (number % 3).zero? && chars.include?('3') ||
         (number % 5).zero? && chars.include?('5')
        number.odd? ? result.push('fake deluxe') : result.push('deluxe')
      end
    end
    
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



