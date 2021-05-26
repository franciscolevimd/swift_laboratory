import UIKit

// Declarara un afunción.
func greeting(person:String) -> String {
    let greeting = "¡Hola, \(person)!"
    return greeting
}
greeting(person: "Fatsy")
greeting(person: "Emilia")
greeting(person: "Sakurita")

// Parámetros de entrada.
func sayHelloWorld() -> String {
    return "Hello world"
}
sayHelloWorld()

func greeting(person:String, isMale:Bool) -> String {
    if isMale{
        return "Bienvenido caballero \(person)"
    } else {
        return "Bienvenida señorita \(person)"
    }
}
greeting(person: "Emilia", isMale: false)
greeting(person: "Leví", isMale: true)

// Sin retorno
func greet2(person:String) {
    print("Hola \(person)")
}
greet2(person: "Jessica Irais")
greet2(person: "Fatima")

// Retornos
func printAndCount(string:String) -> Int{
    print(string)
    return string.count
}
printAndCount(string: "Saluditos")

func printWithoutCounting(string:String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Buenos días")
printWithoutCounting(string: "Buenos días")

// Retorno de tuplas
func minMax(array:[Int]) -> (min:Int, max:Int)?{
    // Retorno de optional
    if array.isEmpty{
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [34, 3 , 46, 12, -3, 3, 5, 0, 5, 15, -43])
print("Los valores se hallan entre \(bounds!.min) y \(bounds!.max)") // Unwrapping no es la mejor técnica.

// Retorno de optional
minMax(array: [])


// Argumentos y valores defectos
func someFuntion(f1 firsParamName:Int, f2 secondParamName:Int = 6){
    print(firsParamName + secondParamName)
}
someFuntion(f1: 5, f2: 1)
someFuntion(f1: 5)

func greetingTo(_ person:String,from hometown:String) -> String{
    return "Hola \(person) un placer que nos visites desde \(hometown)"
}
greetingTo("Leví", from: "México We")

// Varios parámetros - Variadics
func mean(_ numbers: Double...) -> Double{
    var total:Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}
mean(1, 3, 4, 5)
mean(1.5, 2.7)
mean(3, 4.5, 18.75)

// Reto Variadics.
func geometricMean(_ numbers:Double...) -> Double{
    var total:Double = 1
    for number in numbers {
        total *= number
    }
    return pow(total, (1/Double(numbers.count)))
}
geometricMean(2, 8)
geometricMean(2, 50)
geometricMean(1, 2, 3, 4)
geometricMean(1.2, 4.3)

var x = 5
func addOne(number:Int){
    var number2 = number
    number2 += 1
    print("El número ahora vale \(number2)")
}
addOne(number: x)


// inout
func swapTwoInts(_ a: inout Int,_ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}
var someInt = 3
var otherInt = 7
print("someInt vale \(someInt) y otherItn vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt vale \(someInt) y otherItn vale \(otherInt)")

// Function types
func addTwoInts(_ a: Int,_ b: Int) -> Int{
    return a + b
} // (Int, Int) -> Int
func multiplyTwoInts(_ a: Int,_ b: Int) -> Int{
    return a*b
} // (Int, Int) -> Int

func printHW(){
    print("Jello munde")
} // () -> void

var mathFunction: (Int, Int) -> Int = addTwoInts
mathFunction(2, 5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Resultado: \(mathFunc(a, b))")
}
printMathResult(multiplyTwoInts, 3, 7)


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    // Funciones anidadas - Nested Functions.
    func stepFoward(_ input: Int) -> Int{
        return input + 1
    }
    func stepBackward(_ input: Int) -> Int{
        return input - 1
    }
    return backward ? stepBackward : stepBackward
}
var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}
print("¡Cero!")



