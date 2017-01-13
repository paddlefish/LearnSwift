//: [Previous](@previous)
/*:
* experiment:
Advanced Numeric Types

  GOAL: Make each expression evaluate to true.
  
  RULES:
  1. You can only change the right-hand side
  1. Type only a base-10 integer.

  [solution](advanced_types_solution)
*/
0b101 == 0
0x101 == 0
0o101 == 0
00101 == 0
001e1 == 0
0.1e1 == 0
0x1p1 == 0

/*:
* experiment:
Fun with Floating Point

  GOAL: Make each expression evaluate to true.
  
  RULES:
  1. Leave the left-hand side alone.
  1. Use either Double.infinity or Double.nan in your right-hand expression.
  1. Hint: NaN is never equal to anything.

  [solution](advanced_types_solution)
*/
1.0/(-0.0) == Double.infinity
0.0/0.0 == Double.nan

//: [Next](@next)
