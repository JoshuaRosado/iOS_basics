import UIKit
import Foundation


// ----------- OPTIONALS

var name: String = "Cataley" // -- String type
var pet: String?             // -- Optional String Type
                            // Right now the value of pet is nil (we have not given a value to it)
pet = "Nemo"
//print(pet) // Expression implicitly coerced from 'String?' to 'Any'
//
///
///// Output = Nemo     *** NOT GOOD PRACTICE ***

//We have to first unwrap the Optional before we can use it. It's like a present. We first make sure that it isn't empty by shaking it around. If we hear something then we safely unwrap the present.

//Doing something like this is very common in Swift. If an Optional Type is not nil then do something. In fact, this is so common that there is a special syntax to make this process easier. This syntax is called Optional Binding

// OPTIONAL BINDING

if let unwrappedPetVar = pet{
    /*print(unwrappedPetVar!)*/ // Force unwrap using the "!"
    print(unwrappedPetVar)
}
// We can force-unwrap optionals using the "!" operator. Note that this should only be done when we are absolutely sure that the optional holds a value (usually right after the optional has a value assigned to it).


// -------------- Implicitly Unwrapped Optional

let possibleDevide: String? = "Apple Watch"
let watch: String = possibleDevide! // we have to have the exclamation point
print(watch)
let assumedDevice : String! = "iPhone" // <--- ! was used
let iphone: String = assumedDevice // no need to unwrapped
print(iphone)


var fullName: String? = "Khai Asher Rosado" //  "?" = Optional

var x : Int? = 3
var y: Int? = 12


if let value = x{
    if let value2 = y{
        let result = value + value2
        print(result)
    }
}
