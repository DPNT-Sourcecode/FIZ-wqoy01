# Fizz Deluxe: Notes

```ruby
# From lib/send_command_to_server.rb:

    .with_solution_for('sum', -> (x, y) {Sum.new.sum(x, y)})
    .with_solution_for('hello', -> (p) {Hello.new.hello(p)})
    .with_solution_for('fizz_buzz', -> (p) {FizzBuzz.new.fizz_buzz(p)})
    .with_solution_for('checkout', -> (p) {Checkout.new.checkout(p)})

```

## sum

Simply `x + y`

## hello

**R1:** *The requirement for this round is to say hello to the world.*
Literally just that. Method `hello(friend_name)` is being expected to "Hello, World!" regardless of the argument supplied. To be fair,  requirements do say `param[0] = a String. Ignore for now.`

**R2:** *Example: if name of friend is "John" than return "Hello, John!"*
OK, I jumped the gun before in R1. Now we do actually care about the value of `friend_name`.


## fizz_buzz

R5 criteria for 

## checkout