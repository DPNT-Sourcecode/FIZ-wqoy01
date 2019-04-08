# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizz_buzz
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(6), 'Write "fizz" if number is multiple of 3'

    assert_equal "buzz", FizzBuzz.new.fizz_buzz(25), 'Write "buzz" if number is multiple of 5'

    assert_equal "fizz buzz", FizzBuzz.new.fizz_buzz(30), 'Write "fizz buzz" if number is multiple of both 3 and 5'

  end

end

# - If the number is a multiple of three then you should write "fizz"
# - If the number is a multiple of five then you should write "buzz"
# - If the number is a multiple of both three and five then you should write "fizz buzz"
# - If the number is not a multiple of five or three then write the number, example 1
