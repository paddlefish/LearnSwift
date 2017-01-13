//: [Previous](@previous)
/*:
* experiment:
Class and Struct

  GOAL: Guess what value will be printed at each stage.
  Then uncomment the code and see how you did.

  [solution](advanced_tuples_solution)
*/

struct S { var i: Int }
var s = S(i: 10)
var t = s
s.i = 20
print("Struct: \(s.i) \(t.i)")
	// My Answer: t was copied by value, and so is unmodified by assignment to s
class C { var i: Int = 30 }
var c = C()
var u = c
c.i = 40
print("Class: \(c.i) \(u.i)")
	// My Answer: u and c hold references to the same object. Assigning to c also assigned to u
// */
// Your code here

//: [Next](@next)
