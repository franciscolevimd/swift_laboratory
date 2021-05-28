import UIKit

// 1. Global functions
// 2. Nested functions
// 3. Closure ***

let names = ["Erika", "Sayaka", "Zoila", "Madoka", "Eren", "Leví"]

func backword(_ s1: String, _ s2: String) -> Bool{
    return s1 > s2
}
var reversedNames = names.sorted(by: backword)

/*
 { (params) -> return type in
     //Código del closure
 }
 */
reversedNames = names.sorted(by: { (s1, s2)
    -> Bool in
    return s1 > s2
})
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
reversedNames = names.sorted(by: { $0 > $1 })
reversedNames = names.sorted(by: >)

//Trailing Closures
func someFunctionThatTakesAClosure(closure: () -> Void){
    // Cuerpo de la función
}

someFunctionThatTakesAClosure(closure: {
    // Cuerpo del Closure
})

someFunctionThatTakesAClosure {
    // Añadir closure aquí
}

reversedNames = names.sorted { $0>$1 }
let digitNames = [
    0:"Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro"
    , 5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]
let numbers = [16, 58, 503, 10567, -23, 0]
let numbersStrings = numbers.map { (number) -> String in
    let minus = number < 0 ? "Menos" : ""
    var number = number < 0 ? number * -1 : number
    var output = ""
    repeat {
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0
    output = minus + output
    return output
}
numbersStrings

// Capturing closure.
func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0
    func incremter() -> Int{
        runningTotal += amount
        return runningTotal
    }
    return incremter
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementByTen()
