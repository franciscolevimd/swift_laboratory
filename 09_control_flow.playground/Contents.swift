import UIKit

// Bucle For-in
let names = ["Ricaro Celis", "María la del Barrio", "Junchita Jimenez"]
for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["Spider":8, "ant":6, "dog":4]
for (animalName, legCount) in numberOfLegs {
    print("Animal:\(animalName) tiene \(legCount) patas.")
}

for idx in 1...5 {
    print("\(idx) x 3 = \(idx*3)")
}


let base = 2
let power = 10
var answer = 1
for _ in 1..<power {
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: 5) {
    print("\(hour):\(tickMark)")
}

// Bucle While
var i = 0
while i <= 10 {
    i += 1
}
print(i)

repeat {
    i += 1
} while i <= 10
print(i)


let n = 100
var sieve = Set<Int>()
var multiples = Set<Int>()
for i in 2...n {
    if !multiples.contains(i) {
        for j in stride(from: i*i, to: n+1, by: i) {
            multiples.insert(j)
        }
        sieve.insert(i)
    }
    multiples.remove(i)
}
print(sieve.sorted())

// If y Else
var temp = 13
if temp <= 15 {
    print("¡Hace frio! Enciende la clafacción")
}
else if temp >= 25 {
    print("¡Hace calor! Enciende el aire acondicionado")
}
else {
    print("La sensaciónn térmica es agradable. No hace falta modificarla")
}

//Switch/case
let someCharacter = "Z"
switch someCharacter {
case "a", "A":
    print("Es la primera letra del alfabeto.")
case "z", "Z":
    print("Es la última letra del alfabeto.")
default:
    print("Letra no reconocida.")
}

let otherCharacter = "a"
switch otherCharacter {
case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U":
    print("Es una vocal")
default:
    print("Es una consonante")
}

let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchíiiisimas"
}
print("\(naturalCount) \(phrase)")

let somePoit = (1, 0)
switch somePoit {
case (0,0):
    print("El punto \(somePoit) es el origen de coordenadas")
case (_, 0):
    print("El punto \(somePoit) se halla sobre el eje de las x")
case (0, _):
    print("El punto \(somePoit) se halla sobre el eje de las y")
case (-2...2, -2...2):
    print("El punto \(somePoit) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoit) está en algún otro lado")
}

let anotherPoint = (2, -2)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las x, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las y, con valor \(y)")
case let (x, y) where x == y:
    print("El punto se halla sobre la recta x = y")
case let (x, y) where x == -y:
    print("El punto se halla sobre la recta x = -y")
case let (x, y):
    print("En algún otro lugar del plano, en (\(x),\(y))")
}


let someCharacter2:Character = "G"
    
switch someCharacter2 {
case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U":
    print("Es una vocal")
case "b", "B", "c", "C", "d", "D", "f", "F", "g", "G": // TODO: acabar con el resto de las consonantes.
    print("Es una consonante")
default:
    print("Se trata de un caracter no vocal ni consonante")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Se halla sobre le eje, a distancia \(distance) del origen")
default:
    print("No está sobre el eje")
}

// Control Transfer Sentences - continue, break, fallthrough, return, throw
let sentence = "Las mentes grandes piensan igual"
var filteredSentence = ""
let charactersTRoRemove:[Character] = ["a", "e", "i", "o", "u"]

for ch in sentence {
    if charactersTRoRemove.contains(ch) {
        continue
    }
    filteredSentence.append(ch)
    if ch == "d" {
        break
    }
}
filteredSentence

let integerToDescribe = 7
var description = "El número \(integerToDescribe) es"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " un número primo y"
    fallthrough
default:
    description += " un número entero"
}
print(description)

var people = ["name":"Francisco Leví", "age":31, "isMale":true] as [String:Any]

func userValidation(person:[String:Any]) {
    guard let surname = person["name"] else{
        print("El nombre es deconocido")
        return
    }
    // Aquí existe surname
    print(surname)
    guard let age = person["age"] else{
        print("La edad es deconocida")
        return
    }
    print("La edad de la persona es \(age)")
    guard let surname = person["surname"] else{
        print("El surname es deconocido")
        return
    }
    print("El surname es \(surname)")
}

userValidation(person: people)

if #available(iOS 12, macOS 10.12, *) {
    print("Algo")
} else {
    print("Lo de siempre")
}
