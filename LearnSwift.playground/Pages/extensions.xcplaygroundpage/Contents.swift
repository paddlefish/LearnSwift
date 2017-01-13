//: [Previous](@previous)
import Foundation
/*:
* experiment:
Extensions

	Implement some extensions to add the needed methods and implement the Filled protocol

  [solution](extensions_solution)
*/
protocol Filled {
	var filling: String? { get }
}

class FoodFacts {
	enum Donut {
		case glazed
		case bavarian
		case cake
	}

	struct Cookie {
		var layers: [String]
	}

	static func isFilling(layer: String) -> Bool {
		return layer == "frosting"
	}
}

// Implement extensions on Donut and Cookie so that the condition is true

let pastries: [Any] = [
		FoodFacts.Donut.bavarian,
		FoodFacts.Cookie(layers: ["chocolate", "frosting", "chocolate"])
	]
let filled = pastries.flatMap {
	return ($0 as? Filled)?.filling
}
["custard", "frosting"] == filled
	// Should be true

//: [Next](@next)
