# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizz_buzz
    assert_equal "fizz buzz", FizzBuzz.new.fizz_buzz(15), 'If number divisible by both 3 and 5, return "fizz buzz"'

  end

end

# - If the number is a multiple of three then you should write "fizz"
# - If the number is a multiple of five then you should write "buzz"
# - If the number is a multiple of both three and five then you should write "fizz buzz"
# - If the number is not a multiple of five or three then write the number, example 1
