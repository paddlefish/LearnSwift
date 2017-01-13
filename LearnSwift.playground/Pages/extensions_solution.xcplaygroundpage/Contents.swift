//: [Previous](@previous)
import Foundation
/*:
* experiment:
Extensions

	Implement some extensions to add the needed methods

  [solution](leaky_solution)
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

extension FoodFacts.Donut: Filled {
	var filling: String? {
		get {
			switch self {
				case .bavarian:
					return "custard"
				default:
					return nil
			}
		}
	}
}


extension FoodFacts.Cookie: Filled {
	var filling: String? {
		get {
			let fillingLayers:[String] = layers.flatMap {
				return FoodFacts.isFilling(layer: $0) ? [$0] : []
			}
			return fillingLayers.first
		}
	}
	
}

let pastries: [Any] = [
		FoodFacts.Donut.bavarian,
		FoodFacts.Cookie(layers: ["chocolate", "frosting", "chocolate"])
	]
let filled = pastries.flatMap {
	return ($0 as? Filled)?.filling
}
["custard", "frosting"] == filled
	// Should be true

