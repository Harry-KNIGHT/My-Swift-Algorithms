//: [Previous](@previous)

import Foundation

/*
 Dans un tableau d'entiers, supprimer tous les plus grandes valeur et ne laisser que le plus petit entier.

 Exemple:

 var numbers = [10, 5, 2, 45, 90, 103, 20]

 garder 2  et supprimer tous les autres chiffres
 retourner [2]
 */

func findSmallerNumber(_ numbers: [Int]) {
	var mappedNumbers = numbers.map { $0 }
	var smallerNumber = numbers[0]
	//var index = 0

	for number in mappedNumbers {
		if number < smallerNumber {
			smallerNumber = number
		} else {
			mappedNumbers.removeAll { $0 > smallerNumber }
		}
	//index + 1
	}
	print(smallerNumber)
	print(mappedNumbers)
}

findSmallerNumber([10, 5, 2, 200, 45, 90, 103, 20])

//: [Next](@next)
