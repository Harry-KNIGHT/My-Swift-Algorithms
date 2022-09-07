//: [Previous](@previous)

import Foundation

/*
 Modifier aléatoirement les deux derniers chiffres d'un entier.

 Exemple:

randomNumbers(number: 190) et renvoyer un chiffre aléatoire en 100...199

*/

func randomSecondNumbersA(_ number: String) -> String {
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

print(randomSecondNumbersA("300"))

func randomSecondNumbersB(_ number: Int) -> String {

	if number < 100 || number > 999 {
		return "Error, \(number) isn't a hundred number"
	}

	let divisedNumber = number / 100
	let hundredNumbers = Int.random(in: 0...99)

	let finalNumber: String = "\(divisedNumber)\(hundredNumbers)"

	if hundredNumbers < 10 {
		return "\(divisedNumber)0\(hundredNumbers)"
	}
	return finalNumber
}
print(randomSecondNumbersB(400))

//Better solution
func randomSecondNumbersC(_ number: Int) -> Int {
	return (number < 99 || number > 999 ? 0 : ((number / 100) * 100) + Int.random(in: 0...99))
}
print(randomSecondNumbersC(200))


//: [Next](@next)
