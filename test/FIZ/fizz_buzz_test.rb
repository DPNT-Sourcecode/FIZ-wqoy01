# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(6), 'Write "fizz" if number is multiple of 3'

    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(25), 'Write "buzz" if number is multiple of 5'

    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(30), 'Write "fizz buzz" if number is multiple of both 3 and 5'

    assert_equal 11, FizzBuzz.new.fizz_buzz(11), 'Write the number if number is not multiple of either 3 or 5'

    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(13), 'Write "fizz" if number contains a 3'

    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(56), 'Write "buzz" if number contains a 5'

  end
end


