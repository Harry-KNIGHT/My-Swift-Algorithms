//: [Previous](@previous)

import Foundation

/*
 Dans un tableau de chiffres, trouver le plus grand nombre et le retourner.

 Exemple:

 var numbers = [10, 5, 2, 45, 90, 103, 20]

 retourner 103
 */

func findBiggerNumber(_ numbers: [Int]) -> Int {
	var biggestNumber: Int = 0
	for number in numbers {
		if biggestNumber < number {
			biggestNumber = number
		}
	}
	return biggestNumber
}

print(findBiggerNumber([10, 5, 2, 200, 45, 90, 103, 20]))
//: [Next](@next)
