//: [Previous](@previous)

import Foundation

/*
 Prendre une date de naissance, et donner l'âge actuel.

 Exemple:

 "03/08/1998" -> 24
 */

func whatsMyAge(from birthDate: String) -> String {

	let dateFormatter = DateFormatter()
	let relativeDateTimeFormatter = RelativeDateTimeFormatter()
	dateFormatter.dateFormat = "dd/MM/yy"

	// Convert string into Date? format
	let birthInDateFormat = dateFormatter.date(from: birthDate)

	if let birthInDateFormat = birthInDateFormat {
		// return time from date in func paramter to today
		let relativeTime = relativeDateTimeFormatter.localizedString(for: birthInDateFormat, relativeTo: Date.now)
		return relativeTime
	}
	return "error"
}

print(whatsMyAge(from: "03/08/1998"))

//: [Next](@next)







