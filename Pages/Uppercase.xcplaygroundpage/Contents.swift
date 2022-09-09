//: [Previous](@previous)

import Foundation

/*
 Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.


 Exemples d’utilisation :
 $> python exo.py “bonjour mathilde, comment vas-tu ?!”
 Bonjour Mathilde, Comment Vas-tu ?!


 $> python exo.py 42
 error

 Afficher error et quitter le programme en cas de problèmes d’arguments.

 */

func upperCaseA(_ argument: String) -> String {
	var isItWhiteSpace = false
	var string = ""
	var counter = 0

	for char in argument {

		if char.isNumber {
			return "error"
		}

		if char.isWhitespace {
			string.append(char)
			isItWhiteSpace = true
		} else if isItWhiteSpace || counter < 1 {
			string.append(char.uppercased())
			isItWhiteSpace = false
			counter += 1
		} else {
			string.append(char.lowercased())
		}
	}
	return string
}

print(upperCaseA("bonjour mathilde, comment vas-tu ?!"))



//: [Next](@next)
