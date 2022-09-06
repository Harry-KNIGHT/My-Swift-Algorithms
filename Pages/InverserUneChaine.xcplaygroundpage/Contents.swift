//: [Previous](@previous)

import Foundation

func reverseString(argument: String) -> String {
	var reversedChar = [Character]()

	for char in argument {
		reversedChar.insert(char, at: reversedChar.startIndex)
	}
	
	let reversedArrayInString = reversedChar.map { String($0) }
	let joinedString = reversedArrayInString.joined()

	return joinedString
}

print(reverseString(argument: "Hello World!"))

//: [Next](@next)
