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
