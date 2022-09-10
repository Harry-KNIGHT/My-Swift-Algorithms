//: [Previous](@previous)

import Foundation

/*
 Dans un tableau d'entiers, supprimer tous les plus grandes valeur et ne laisser que le plus petit entier.

 Exemple:

 var numbers = [10, 5, 2, 45, 90, 103, 20]

 garder 2  et supprimer tous les autres chiffres
 retourner [2]
 */

func findSmallerNumberA(_ numbers: inout [Int]) -> [Int] {
	var smallerNumber = numbers[0]

	for number in numbers {
		if number < smallerNumber {
			smallerNumber = number
		} else {
			numbers.removeAll { $0 > smallerNumber }
		}
	}
	return Array(Set(numbers))
}

var numbersInFunctionArgument = [10, 5, 2, 200, 2, 45, 90, 103, 20]

findSmallerNumberA(&numbersInFunctionArgument)

func findSmallerNumberB(_ numbers: [Int]) -> [Int] {
	let filteredNumbers = numbers.filter { $0 <= $0 + 1 }
	return Array(Set(filteredNumbers))
}
print(findSmallerNumberB(numbersInFunctionArgument))

//: [Next](@next)
