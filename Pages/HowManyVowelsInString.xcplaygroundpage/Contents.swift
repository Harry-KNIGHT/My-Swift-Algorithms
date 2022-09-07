//: [Previous](@previous)

import Foundation
/*
 Retourner combien de voyelles sont dans la chaine de caractères.

 Exemple:

 Elliot -> 3

 */


func howManyVoyelsInStringA(_ argument: String) -> Int {
	let vowels = "aeiouy"
	var numberOfVowels = 0

	for argumentChar in argument.lowercased() {
		if !argumentChar.isLetter && !argumentChar.isWhitespace {
			return 0
		}

		for vowel in vowels.lowercased() {
			if argumentChar == vowel {
				numberOfVowels += 1
			}
		}
	}
	return numberOfVowels
}

print(howManyVoyelsInStringA("Nyl Neuville cherche une alternance dans le metavers 🏴‍☠️"))


//: [Next](@next)
