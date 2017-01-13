//: [Previous](@previous)
/*:
* experiment:
Advanced Tuples

  GOAL: form an expression using tuple indexing that completes this familiar tongue twister.

  [solution](advanced_tuples_solution)
*/

let answer = "As much wood as a woodchuck could chuck if a woodchuck could chuck wood!"
let canChuck = (a: 1, woodchuck:(could:(chuck:(wood:answer))))
let chuckyChuck = (a: 1, woodchuck: (chuck:(if_a:canChuck)))
let woodyWoodChuck = (a: 1, much: (wood: (would: (a: chuckyChuck))))
let input = (a: 1, how: woodyWoodChuck)

// Your answer goes here


/*:
* experiment:
Comparison

  GOAL: Learn how Tuple comparisons work.

  1. Before you uncomment each expression, make a guess as to whether it will be true or false or an error.
  1. Leave lines that are an error commented.
  
  Are tuples compared by the ORDER of the items, or sorting the labels?

  Tuples are compared by the ORDER of the items, regardless of the sort order of the labels
*/

// (1, "z") < (2, "a")
// (z: 1, a: "z") < (z: 2, a: "a")
// (a: "z", z: 1) < (z: 2, a: "a")
// (a: "z", z: 1) < (a: "a", z: 2)


/*:
* experiment:
Tuple Assignment

  What local constants are declared and what are their values?
  
  1. Write an expression using == that uses these new locals
  1. The expression should evaluate to true

*/

let (x: X, y: Y) = (x: 10, y: 20)

// Your answer goes here


//: [Next](@next)
