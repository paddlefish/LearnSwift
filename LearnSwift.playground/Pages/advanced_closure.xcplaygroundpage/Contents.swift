//: [Previous](@previous)
/*:
* experiment:
Concise Closures

  Convert the declaration of b from a function to a closure.
  Use type inference to make the closure as concise as possible.

  [solution](advanced_closure_solution)
*/


func make(isGreaterThan cutoff: Int) -> (Int) -> Bool {
	func b(i: Int) -> Bool {
		return i > cutoff
	}
	return b
}

make(isGreaterThan: 1)(2) == true
make(isGreaterThan: 1)(1) == false

/*:
* experiment:
inout parameters

	Make a function that accepts an Int and adds one

  [solution](advanced_closure_solution)
*/

// func addOne......
var i = 1
// call addOne to add one to i
i == 2 // should be true

//: [Next](@next)
