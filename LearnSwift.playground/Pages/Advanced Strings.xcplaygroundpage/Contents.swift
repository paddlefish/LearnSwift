//: [Previous](@previous)

var swift = "swift"
var idx = swift.startIndex
String(swift[idx])
// swift[idx] = Character("S")
	// Indexes are read-only, even on mutable String
swift.remove(at: idx)
swift.insert("S", at: idx)

"prefixed string".hasPrefix("prefix")
"string with suffix".hasSuffix("suffix")

// Guess what value is printed before uncommenting each line
// "Hello, world".characters.count
// "Andre\u{301}".characters.count
// "Oops\\u{301}".characters.count


// Use the MacOS "Emoji and Symbols" panel to look up the puppy emoji.
// Create a String expression containing the puppy emoji using the
// embedded unicode scalar syntax \u{...}

"Puppy: \u{61}"

//: [Next](@next)
