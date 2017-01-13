//: [Previous](@previous)
import Foundation
/*:
* experiment:
Inheritance

	Create two new classes: Triangle that is a subclass
	of Polygon. Triangle always returns 3 for numberOfSides
	Circle is a subclass of oval.  Circle width and height
	are always the same.

  [solution](inheritance_solution)
*/
class Shape {
	var width = 0
	var height = 0
}

class Polygon: Shape {
	var numberOfSides = 0
}

class Triangle: Polygon {
	override var numberOfSides: Int {
		get {
			return 3
		}
		set {
		}
	}
}

class Oval: Shape {

}


class Circle: Oval {
	override var height: Int {
		didSet {
			if height != oldValue {
				width = height
			}
		}
	}
	override var width: Int {
		didSet {
			if width != oldValue {
				height = width
			}
		}
	}
}

// Uncomment this test code
/*
let c = Circle()
c.width = 10
c.width == c.height
c.height = 20
c.width == c.height
c.width == 20

let t = Triangle()
t.numberOfSides == 3
t.numberOfSides = 6
t.numberOfSides == 3
*/

//: [Next](@next)
