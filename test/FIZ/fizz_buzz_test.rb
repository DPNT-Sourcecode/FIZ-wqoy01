# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(6), 'Write "fizz" if number is multiple of 3'

    # R5: Changed number from 25 to 10, so still valid for buzz
    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(10), 'Write "buzz" if number is multiple of 5'

    # R5: Changed number from 30 to 60, so still valid for 'fizz buzz'
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(60), 'Write "fizz buzz" if number is multiple of both 3 and 5'

    assert_equal 17, FizzBuzz.new.fizz_buzz(17), 'Write the number if number is not multiple of either 3 or 5'

    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(13), 'Write "fizz" if number contains a 3'

    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(56), 'Write "buzz" if number contains a 5'

    # assert_equal 'deluxe', FizzBuzz.new.fizz_buzz(44), 'Write "deluxe" if number greater than 10 with all digits indentical'

    assert_equal 'fizz deluxe', FizzBuzz.new.fizz_buzz(36), 'Write "deluxe" if number divisible by 3 AND contains a 3'

    assert_equal 'buzz deluxe', FizzBuzz.new.fizz_buzz(50), 'Write "deluxe" if number divisible by 5 AND contains a 5'



    # assert_equal 'fake deluxe', FizzBuzz.new.fizz_buzz(11), 'Write "fake deluxe" if number is deluxe and odd'

    # Correct the following test to account for R4
    # assert_equal 'fizz deluxe', FizzBuzz.new.fizz_buzz(33), 'Write "fizz deluxe" if number is both fizz and deluxe'
    # assert_equal 'fizz deluxe', FizzBuzz.new.fizz_buzz(66), 'Write "fizz deluxe" if number is both fizz and deluxe'

    # Due to R4, 'buzz deluxe' is impossible, it will always be 'buzz fake deluxe'
    # there is no multiple of 5 that has all the same digits which is not odd

    # assert_equal 'buzz fake deluxe', FizzBuzz.new.fizz_buzz(55), 'Write "buzz fake deluxe" if number is all of buzz, deluxe and odd'
    # assert_equal 'fizz fake deluxe', FizzBuzz.new.fizz_buzz(33), 'Write "fizz fake deluxe" if number is all of fizz, deluxe and odd'

    # Since 'buzz deluxe' is impossible, so too is 'fizz buzz deluxe'

    # assert_equal 'fizz buzz fake deluxe', FizzBuzz.new.fizz_buzz(555), 'Write "fizz buzz fake deluxe" if number is all of fizz, buzz, deluxe and odd'
  end
end

# - A number is "deluxe" if it fulfils at least one of the following:
# - is divisible by 3 AND contains a 3
# - is divisible by 5 AND contains a 5

