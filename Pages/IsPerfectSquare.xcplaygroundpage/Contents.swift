//: [Previous](@previous)

import Foundation
/*
 Prendre un tableau de doubles retourner le carré parfait de chaque nombre.

*/

func howManyPerfectSquare(numbers: [Double]) -> [Double] {
	var perfectNumbers = [Double]()

	for number in numbers {
		let root = sqrt(number)
		if floor(root) == root {
			perfectNumbers.append(root)
		}
	}
	return perfectNumbers
}

print(howManyPerfectSquare(numbers: (0...800).map { Double($0)}))

//: [Next](@next)
