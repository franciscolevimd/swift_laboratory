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
