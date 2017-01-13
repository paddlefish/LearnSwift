//: [Previous](@previous)
/*:
* experiment:
Concise Closures

  Convert the declaration of b from a function to a closure.
  Use type inference to make the closure as concise as possible.
*/


func make(isGreaterThan cutoff: Int) -> (Int) -> Bool {
	return { $0 > cutoff }
}

make(isGreaterThan: 1)(2) == true
make(isGreaterThan: 1)(1) == false

/*:
* experiment:
inout parameters

	Make a function that accepts an Int and adds one
*/

func addOne(_ i: inout Int) {
	i += 1
}
var i = 1
addOne(&i)
i == 2 // should be true

//: [Next](@next)
