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
	weak var customer: Customer?
	init(customer: Customer) {
		self.customer = customer
		CreditCard.nCreditCards += 1
	}
	
	deinit {
		CreditCard.nCreditCards -= 1
	}
}

// Code Flow
do {
	var pet = Pet()
	Pet.nPets // 1 Pet
}
	Pet.nPets // 0 Pet

do {
	var creditCard: CreditCard
	do {
		var customer = Customer()
		creditCard = CreditCard(customer: customer)
		customer.creditCard = creditCard

		CreditCard.nCreditCards  // 1 CreditCard
		Customer.nCustomers // 1 Customer
	}

	print(creditCard.customer?.name ?? "No customer!")

	CreditCard.nCreditCards  // 1 CreditCard
	Customer.nCustomers // 1 Customer, unless CreditCard.Customer is weak, then 0
}
CreditCard.nCreditCards  // 1 CreditCard has "Leaked"
	// (unless either CreditCard.Customer is weak or Customer.creditCard is weak)
Customer.nCustomers  // 1 Customer has "Leaked"
	// (unless either CreditCard.Customer is weak or Customer.creditCard is weak)

// Experiment with adding the keyword `weak` to the creditCard property of Customer.
// What if you add it instead to the Customer property of CreditCard?
// What if you add it to both?
// What if you use unowned?

//: [Next](@next)
