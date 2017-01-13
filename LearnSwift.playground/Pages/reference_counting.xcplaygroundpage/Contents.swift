//: [Previous](@previous)
import Foundation
/*:
* experiment:
Reference Counting

	Predict how many Customer and CreditCard instances
	exist at each point in the code flow where prompted.
	Then uncomment the code flow and see if you're right.

  [solution](reference_counting_solution)
*/
class Pet {
	static var nPets = 0
	init() {
		Pet.nPets += 1
	}
	
	deinit {
		Pet.nPets -= 1
	}
}

class Customer {
	static var nCustomers = 0
	var creditCard: CreditCard?
	let name = "Customer \(Customer.nCustomers)"
	
	init() {
		Customer.nCustomers += 1
	}
	
	deinit {
		Customer.nCustomers -= 1
	}
	
}

class CreditCard {
	static var nCreditCards = 0
	var customer: Customer?
	init(customer: Customer) {
		self.customer = customer
		CreditCard.nCreditCards += 1
	}
	
	deinit {
		CreditCard.nCreditCards -= 1
	}
}

// Code Flow
/* Answer the questions, then delete this line to see if you're right

do {
	var pet = Pet()
	Pet.nPets // How many Pet instances
}
	Pet.nPets // How many Pet instances

do {
	var creditCard: CreditCard
	do {
		var customer = Customer()
		creditCard = CreditCard(customer: customer)
		customer.creditCard = creditCard

		CreditCard.nCreditCards  // How many CreditCard instances
		Customer.nCustomers // How many Customer instances
	}

	print(creditCard.customer?.name ?? "No customer!")

	CreditCard.nCreditCards  // How many CreditCard instances
	Customer.nCustomers // How many Customer instances
}

CreditCard.nCreditCards  // How many CreditCard instances
Customer.nCustomers // How many Customer instances

// Experiment with adding the keyword `weak` to the creditCard property of Customer.
// What if you add it instead to the Customer property of CreditCard?
// What if you add it to both?
// What if you change CreditCard.customer to an unowned?
// */

//: [Next](@next)
