//: [Previous](@previous)
import Foundation
/*:
* experiment:
Advanced Type Conversion

  Predict what will happen when each line is uncommented.
  * Will the line compile ok or is it a compile error?
  * Will the line execute without error at runtime?
  * What is the type and value of result?

  Leave lines with compile errors commented out.
*/



let s: Int8 = 5
let t: Int16 = 1024
// let u: Int32 = t		// Compile Error: Must explicitly cast t to Int32
let w: Int32 = Int32(t)

let x: Int32 = 1024
// let y: Int8 = Int8(t) // Runtime Error: Int8 not large enough to hold t
// let z: Int8 = 1024  // Compile Error: 1024 overflows Int8

Int(1.5)
Int(-1.5)

Int8.max
// Int8.max + 1 // Runtime Error: results in an overflow
// Int8.max * 2 // Runtime Error: results in an overflow
0 - Int8.max - 1
// 0 - Int8.max - 2 // Runtime Error: results in an overflow
Int8.max << 1

//: [Next](@next)
