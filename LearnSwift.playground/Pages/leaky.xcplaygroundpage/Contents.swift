//: [Previous](@previous)
import Foundation
/*:
* experiment:
Reference Counting

	Fix this code so that deinit gets called.

  [solution](leaky_solution)
*/
protocol Delegate {
	func viewDidLoad(viewController: ViewController)
}

class MyDelegate: Delegate {
	func viewDidLoad(viewController: ViewController) {
		print("View did load \(viewController.fudgeFactor)")
	}
}

class ViewController {
	typealias Callback = (Int) -> Int
	static var nObjects = 0
	var fudgeFactor: Int = 1
	var recompute: Callback?
	var delegate: Delegate!
	
	init() {
		ViewController.nObjects += 1
		recompute = { [unowned self] (i: Int) -> Int in
			let oldFudgeFactor = self.fudgeFactor
			self.fudgeFactor = i
			return oldFudgeFactor
		}
	}
	
	func loadView() {
		delegate.viewDidLoad(viewController: self)
	}
	
	deinit {
		ViewController.nObjects -= 1
	}
}

do {
	let viewController = ViewController()
	let delegate = MyDelegate()
	viewController.delegate = delegate
	viewController.loadView()
	print(viewController.fudgeFactor)
}
ViewController.nObjects


//: [Next](@next)
