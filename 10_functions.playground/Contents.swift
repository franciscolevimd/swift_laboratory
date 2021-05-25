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
