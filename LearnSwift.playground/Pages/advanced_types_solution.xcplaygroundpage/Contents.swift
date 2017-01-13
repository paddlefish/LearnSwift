//: [Previous](@previous)
/*:
* experiment:
Advanced Numeric Types

  GOAL: Make each expression evaluate to true.
  
  RULES:
  1. You can only change the right-hand side
  1. Type only a base-10 integer.
*/
0b101 == 5
0x101 == 257
0o101 == 65
00101 == 101
001e1 == 10
0.1e1 == 1
0x1p1 == 2

/*:
* experiment:
Fun with Floating Point

  GOAL: Make each expression evaluate to true.
  
  RULES:
  1. Leave the left-hand side alone.
  1. Use either Double.infinity or Double.nan in your right-hand expression.
  1. Hint: NaN is never equal to anything.
*/
1.0/(-0.0) == -Double.infinity
0.0/0.0 != Double.nan

//: [Next](@next)
