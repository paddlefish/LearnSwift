//: [Previous](@previous)
/*:
* experiment:
Advanced Switch SOLUTION

Convert the neutral zone case to one that prints
"_N_ miles within the neutral zone" where N is the sum
of the two tuple values.
*/

func tupleSwitch(tuple: (Int, Int)) -> String { 
	switch tuple {
	case (0,0): 
		return "origin"
	case (_,0): 
		return "x-axis"
	case (0,_): 
		return "y-axis"
	case (let x, let y) where x < 0 && y < 0:
		return "\(-x-y) miles within the neutral zone"
	default:
		return "Out in space"
	} 
} 
tupleSwitch(tuple: (-3, -4))

//: [Next](@next)
