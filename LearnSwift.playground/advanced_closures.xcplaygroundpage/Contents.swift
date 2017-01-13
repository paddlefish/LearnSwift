//: [Previous](@previous)

/*:
* experiment:
Capture and Where

  Convert the neutral zone case to one that prints
  "_N_ miles within the neutral zone" where N is the sum
  of the two tuple values.

  [solution](advanced_switch_solution)
*/

func tupleSwitch(tuple: (Int, Int)) -> String { 
	switch tuple {
	case (0,0): 
		return "origin"
	case (_,0): 
		return "x-axis"
	case (0,_): 
		return "y-axis"
	case (-Int.max..<0, -Int.max..<0):
		return "Neutral zone"
	default:
		return "Out in space"
	} 
} 
tupleSwitch(tuple: (-3, -4))

//: [Next](@next)
