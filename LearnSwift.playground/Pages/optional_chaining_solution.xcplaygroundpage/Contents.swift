//: [Previous](@previous)
/*:
* experiment:
Advanced Tuples

  GOAL: Create an instances of Node named "first"
  assign a new Node named "second" to it's nextNode
  assign a new Node named "third" to first's nextNode's nextNode
  verify that "first"'s nextNode's nextNode's name is "third"

  [solution](advanced_tuples_solution)
*/
class Node {
  var nextNode: Node?
  let name: String
  init(_ name: String) {
    self.name = name
  }
  var count: Int {
    var result = 0
    var node: Node? = self
    while node != nil {
      result += 1
      node = node?.nextNode
    }
    return result
  }
}

let n = Node("first")
n.nextNode = Node("second")
n.nextNode?.nextNode = Node("third")
n.nextNode?.name
n.nextNode?.nextNode?.name
n.count

//: [Next](@next)
