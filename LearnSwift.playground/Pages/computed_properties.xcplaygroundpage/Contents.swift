//: [Previous](@previous)
import Foundation
/*:
* experiment:
Computed Properties

  Convert heightInInches from a read-only computed property into a read-write
  computed property.

  [solution](computed_properties_solution)
*/
class Person {
	var heightInMillimeters: Int = 0
	var firstName: String = ""
	var lastName: String = ""
	var fullName: String {
		get {
			return "\(firstName) \(lastName)"
		}
		set(fullName) {
			let parts = fullName.components(separatedBy: " ")
			firstName = parts[0]
			lastName = parts[0]
		}
	}
	var heightInInches: Int {
		get {
		  return 5 * (1 + heightInMillimeters) / 127
		}
	}
}

let andy = Person()
andy.fullName = "Andy Rahn"
andy.firstName
andy.lastName
//andy.heightInInches = 77
andy.heightInInches

//: [Next](@next)
