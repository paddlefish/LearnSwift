//: [Previous](@previous)
import Foundation
/*:
* experiment:
Reference Counting

	Predict how many Person and Apartment instances
	exist at each point in the code flow where prompted.
	Then uncomment the code flow and see if you're right.

  [solution](reference_counting_solution)
*/
class Person {
	static var nPersons = 0
	weak var apartment: Apartment?
	
	init() {
		Person.nPersons += 1
	}
	
	deinit {
		Person.nPersons -= 1
	}
	
}

class Apartment {
	static var nApartments = 0
	var person: Person?
	init() {
		Apartment.nApartments += 1
	}
	
	deinit {
		Apartment.nApartments -= 1
	}
}

// Code Flow
do {
	var person = Person()
	Person.nPersons // How many Person instances?
}
Person.nPersons // How many Person instances?

do {
	var apartment = Apartment()
	Apartment.nApartments  // How many Apartment instances?
	do {
		var person = Person()
		apartment.person = person
		person.apartment = apartment
		Apartment.nApartments  // How many Apartment instances?
		Person.nPersons // How many Person instances?
	}
	if apartment.person == nil {
		print("Oh no, nobody lives in this apartment")
	}
	Apartment.nApartments  // How many Apartment instances?
	Person.nPersons // How many Person instances?
}
Apartment.nApartments  // How many Apartment instances?
Person.nPersons // How many Person instances?

// Experiment with adding the keyword `weak` to the apartment property of Person.
// What if you add it instead to the person property of Apartment?
// What if you add it to both?

//: [Next](@next)
