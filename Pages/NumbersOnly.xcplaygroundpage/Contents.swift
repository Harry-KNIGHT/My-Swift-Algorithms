//: [Previous](@previous)

import Foundation

/*
 Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

 Exemples d’utilisation :
 $> python exo.py “4445353”
 true

 $> python exo.py 42
 true

 $> python exo.py “Bonjour 36”
 false

 Afficher error et quitter le programme en cas de problèmes d’arguments.

*/

func isArgumentContainsNumbersOnlyA(_ numbers: String) -> Bool {
	for number in numbers {
		if !number.isNumber {
			return false
		}
	}
	return true
}
isArgumentContainsNumbersOnlyA("12345")

func isArgumentContainsNumbersOnlyB(_ numbers: String) -> Bool {
	let mapped = numbers.map { $0.isNumber }
	return !mapped.contains(false)
}
print(isArgumentContainsNumbersOnlyB("12345"))

//: [Next](@next)
