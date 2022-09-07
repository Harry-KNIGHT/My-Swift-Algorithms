//: [Previous](@previous)

import Foundation

/*
 Modifier aléatoirement les deux derniers chiffres d'un entier.

 Exemple:

randomNumbers(number: 190) et renvoyer un chiffre aléatoire en 100...199

*/

func randomSecondNumbers(_ number: String) -> String {
	var arrayNumber = [Character]()

	var firstNumber = ""

	for num in number {
		arrayNumber.append(num)
		firstNumber.append(arrayNumber[0])
		if !num.isNumber {
			return "error"
		} else if !firstNumber.isEmpty {
			break
		}
	}

	let convertFirstNumberInInt = Int(firstNumber) ?? 0
	var secondNumbers = [Int]()

	for num in convertFirstNumberInInt...99 {
		secondNumbers.append(num)
	}

	return "\(firstNumber)\(secondNumbers.randomElement() ?? 0)"
}

print(randomSecondNumbers("300"))

//: [Next](@next)
