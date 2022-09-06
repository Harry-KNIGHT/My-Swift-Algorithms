import Foundation

func upDownString(argument: String) -> String  {
	var upDownString = ""
	var index = 0
	var isWhiteSpace: Bool = false

	for char in argument {
		if char.isLetter && index % 2 == 0 && isWhiteSpace == false {
			upDownString.append(char.uppercased())
			index += 1
		} else if char.isLetter && index % 2 == 1 && isWhiteSpace == false {
			upDownString.append(char.lowercased())
			index += 1
		} else {
			upDownString.append(char)
			isWhiteSpace = true
		}
		isWhiteSpace = false
	}
	return upDownString
}

print(upDownString(argument: "Hello World this is up and down string"))

func secondUpAndDownString(argument: String) -> String {
	var upperCased: Bool = true
	var upDownString = ""

	for char in argument {
		if char.isLetter && upperCased {
			upDownString.append(char.uppercased())
			upperCased.toggle()

		} else if char.isWhitespace {
			upDownString.append(char)
		} else if char.isLetter && !upperCased {
			upDownString.append(char.lowercased())
			upperCased.toggle()
		} else {
			return "Error"
		}
	}
	return(upDownString)
}

print(secondUpAndDownString(argument: "Hello World"))



