//: [Previous](@previous)

import Foundation

/*
 Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.


 Exemples d’utilisation :
 $> python exo.py 20 25
 20 21 22 23 24


 $> python exo.py 25 20
 20 21 22 23 24

 $> python exo.py hello
 error

 Afficher error et quitter le programme en cas de problèmes d’arguments.
*/

func minMaxNumbersA(from min: Int, to max: Int) -> [Int] {
	var arrayOfNumbers = [Int]()
	for number in (min..<max) {
		arrayOfNumbers.append(number)
	}
	return arrayOfNumbers
}

print(minMaxNumbersA(from: 20, to: 25))

func minMaxNumbersB(from min: Int, to max: Int) -> [Int] {
	return (min..<max).map { $0 }

}
print(minMaxNumbersB(from: 20, to: 25))


//: [Next](@next)
