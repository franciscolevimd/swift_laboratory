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
