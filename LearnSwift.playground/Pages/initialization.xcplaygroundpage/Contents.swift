//: [Previous](@previous)
import Foundation
/*:
* experiment:
Initialization

	Add stored property numberOfSides as an Integer.
	Make it so that numberOfSides to the sum of width and height. When doing so, make sure the convenience
	initializer from Shape is still accessible.

  [solution](initialization_solution)
*/
class Shape {
	var width = 0
	var height = 0
	
	convenience init(equalSize: Int) {
		self.init()
		width = equalSize
		height = equalSize
	}
}

class Polygon: Shape {
}

// Uncomment when implemented
//let p = Polygon(equalSize: 2)
//p.numberOfSides
	// Should be 4

//: [Next](@next)
