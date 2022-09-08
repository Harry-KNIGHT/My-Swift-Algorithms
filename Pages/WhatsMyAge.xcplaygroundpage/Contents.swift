//: [Previous](@previous)

import Foundation

/*
 Prendre une date de naissance, et donner l'âge actuel.

 Exemple:

 "03/08/1998" -> 24
*/

func whatsMyAge(from birthDate: String) -> Date? {
	let dateFormatter = DateFormatter()
	dateFormatter.dateFormat = "dd/MM/yy"
	
	return dateFormatter.date(from: birthDate)

}
print(whatsMyAge(from: "03/08/98"))
//: [Next](@next)
