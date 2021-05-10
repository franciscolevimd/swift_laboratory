import UIKit

//Array
//Conjuntos
//Diccionarios

//ARRAY
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = [] // Otra forma de inicializar
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3) // Otra forma de inicializarlos.
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)
var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Tortillas", "Cebolla", "Cerdo", "Limón"] // Otra forma de inicializar arrays.
shoppingList.count

if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else {
    print("Mandemos a Leví a comprar")
}

shoppingList.append("Agua")
shoppingList.count
shoppingList += ["Papitas", "Aguacate", "Jitomate"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Postres"
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Rábanos", "Gelatina", "Cerveza"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList

let _ = shoppingList.removeLast()
shoppingList

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated() {
    print("Item \(idx+1): \(item)")
}


// CONJUNTOS - Sin orden
// Set
var letters = Set<Character>()
letters.count
letters.insert("q") // Append no se usa porque no hya orden
letters.insert("x")
letters
letters.insert("b")
letters
var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"] // En los conjuntos no existe el orden.
favouriteGames.count

if favouriteGames.isEmpty {
    print("No hay juegos favoritos")
}
favouriteGames.insert("Metal Gear")
favouriteGames

if let removedGame = favouriteGames.remove("Farcry") {
    print("He eliminado de la lista \(removedGame)")
}

if favouriteGames.contains("Metal Gear") {
    print("Me encanta ese juego")
}

for vg in favouriteGames {
    print(vg)
}

for vg in favouriteGames.sorted() {
    print(vg)
}

var numeros : Set<Int> = [1, 2, 3, 3, 2, 3, 1, 3, 3]
numeros.count

// Operaciones con conjuntos.
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeDigits: Set = [2,3,5,7]

// A union B = elementos que pertenencen a el conjunto A, o bien al conjunto B o a ambos conjuntos.
oddDigits.union(evenDigits).sorted()

// A intersección B = elementos que pertenecen a la vez a los conjuntos A y B.
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeDigits).sorted()
oddDigits.intersection(primeDigits).sorted()

// (Diferencia) A - B = Elementos de pertenencen a el conjunto A pero no a B.
oddDigits.subtracting(primeDigits).sorted()

// (Diferencia simétrica) A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeDigits).sorted()

let houseAnimals:Set = ["🐶", "🐱"]
let farmAnimals:Set = ["🐔", "🐮", "🐶", "🐱"]
let cityAnimals:Set = ["🐭", "🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su intersección es vacía.
farmAnimals.isDisjoint(with: cityAnimals)
