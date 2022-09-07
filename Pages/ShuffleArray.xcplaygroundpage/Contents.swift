//: [Previous](@previous)

import Foundation

/*
 Changer l'index de chaque entier dans un tableau

 Exemple:

 [0, 5, 7, 9] -> [9, 5, 7, 0]
*/


func shuffleArrayA(_ argument: [Int]) -> [Int] {
	var numbers = argument
	
	// Regarder s'il est pas vide
	if argument.count == 0 {
		return [0]
	}

	// Rentrer dans le tableau argument
	for number in argument {
		numbers.insert(number, at: Int.random(in: 0..<argument.count - 1))
	}

	return Array(Set(numbers))
}
print(shuffleArrayA([0, 5, 7, 9]))
//: [Next](@next)
