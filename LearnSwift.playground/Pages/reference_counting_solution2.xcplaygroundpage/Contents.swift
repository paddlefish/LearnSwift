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
	unowned var customer: Customer
	init(customer: Customer) {
		self.customer = customer
		CreditCard.nCreditCards += 1
	}
	
	deinit {
		CreditCard.nCreditCards -= 1
	}
}

// Code Flow using `unowned`
do {
	var creditCard: CreditCard
	do {
		var customer = Customer()
		creditCard = CreditCard(customer: customer)
		customer.creditCard = creditCard

		CreditCard.nCreditCards  // 1 CreditCard
		Customer.nCustomers // 1 Customer
	}

	// print(creditCard.customer.name)
		// Crash at runtime

	CreditCard.nCreditCards  // 1 CreditCard
	Customer.nCustomers // 0 Customer
}
CreditCard.nCreditCards  // 0 CreditCard
Customer.nCustomers  // 0 Customer

//: [Next](@next)
