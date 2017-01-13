//: [Previous](@previous)
/*:
* experiment:
Advanced Tuples

  GOAL: Create an instances of Node named "first"
  assign a new Node named "second" to it's nextNode
  assign a new Node named "third" to first's nextNode's nextNode
  verify that "first"'s nextNode's nextNode's name is "third"
  Extra Credit: Add computed property "count" that counts how many items are in the linked list

  [solution](advanced_tuples_solution)
*/
class Node {
  var nextNode: Node?
  let name: String
  init(_ name: String) {
    self.name = name
  }
}

// Your code here

//: [Next](@next)
