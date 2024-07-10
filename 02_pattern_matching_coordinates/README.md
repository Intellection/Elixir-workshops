# Calculate distance from origin

This exercise is meant to showcase destructuring, tuples and pattern matching.

## Useful Reading

- Destructuring & Pattern matching: [Docs](https://hexdocs.pm/elixir/pattern-matching.html)
- Tuples: [Docs](https://hexdocs.pm/elixir/1.12.3/Tuple.html)
- Math Square Root: [:math.sqrt](https://www.erlang.org/doc/apps/stdlib/math.html#sqrt/1)

## Hint

With pattern matching, you always want the most specific match to be first

## Distance from Origin Co Ordinates

The Coordinate origin can be represented as a tuple {0,0} where the tuple is the combination of {x,y},
you will be given a list of co-ordinates and be required to calculate the distance from origin.

The inputs can be

- x is nil
- y is nil
- both x and y is nil
- x and y can both be positive or negative numbers

The distance is returned as floats and can be represented with the following conditions

- if x is nil, return y
- if y is nil, return x
- if x and y are present, the distance is the square root of x squared + y squared
