import UIKit
import Foundation


//Imagine we have a pet training (dog day care business) where we keep information about the dogs that are learning how to behave properly.

// a dog named Bailey training at our dog day care business
var name = "Bailey"
var age = 3
var quirks = "Loves chewing sticks and getting into mischief"
var photo = UIImage()


//In Swift, we use optionals to represent the possibility of no value at all, or nil.

// Declaring Optionals

//let name: String? = nil
//print(name)

//On the first line, you’re creating a constant name of type String?
//The question mark ?, written right after the type annotation, indicates that this constant is an optional.


// **************** Unwrapping Optionals ****************

//You can unwrap optionals in 4 different ways:
//
//With force unwrapping, using !
//With optional binding, using if let
//With implicitly unwrapped optionals, using !
//With optional chaining, using a?.b?.c


// ********* Force Unwrapping (1)

// We only force unwrap if we know there's no chance of the value being nil.

// *********  Optional Binding (2)

//One alternative to force unwrapping is optional binding!
//a conditional and a constant is being used
//constant is only available for use within the conditional body

//if let favoriteNumber = Int("34") {
//    print(favoriteNumber)
//}

// USING GUARD

//guard let password = passwordTextField.text else {
//      // this block of code must return
//    return
//}
//print("User signed up with password: \(password)")


// ******** Implicitly Unwrapped Optionals (3)

// This are optionals, so they can be nil. But you don't have to unwrap them to access their value. Unwraps automatically


//@IBOutlet var passwordField:UITextField!


//---Take a look at the exclamation mark ! after the property type.
//---The ! signals that this is an implicitly unwrapped optional, just like a ? signals an optional.


// ******** Optional Chaining (4)

//Without Optional Chaining

//Both the textfield and the text are optionals
//How do we unwrap these values?

// -----------Optional Binding

//if  let field = usernameTextField,
//    let text  = field.text {
//    print("Logging in user with username: \(field.text)")
//}


//---------------With Optional Chaining
//
//To avoid all of this mess, you can use optional chaining. Here’s an example:
//
//usernameTextField?.text = "cool_swift_dev"
//

//You can chain these calls together, like this:
//
//===========     car?.airCondition?.rightVent?.power = "90%"


//-----------------Nil Coalescing
//
//There is another easy way to unwrap an optional.
//What if we wanted to get a value out of an optional no matter what?
//
//In the case of nil, we would use a default value. This is called nil coalescing:
//
//The nil coalescing operator ??

//Without using the nil coalescing operator:
//var optionalInt: Int? = 10
//var mustHaveResult: Int
//if let unwrapped = optionalInt {
//  mustHaveResult = unwrapped
//} else {
//  mustHaveResult = 0
//}

//Using the nil coalescing operator:
//var optionalInt: Int? = 10
//var mustHaveResult = optionalInt ?? 0

//mustHaveResult is either set to the optionalInt if it has a value, otherwise, it's set to 0 if the value of optionalInt is nil.
//



// EXAMPLE OF OPTIONAL

// IF LET*

var optionalNumber: Int? // Nil
//optionalNumber = 34   // True

if let number = optionalNumber{ // if not nil
    print("I Have a value, it is \(number)")
} else {
    print("I do not have a value, I am nil")
}



// GUARD*
// --------- standard way

func numberLargerThanFive(number: Int) -> Bool{
    if number < 5 {
        return false
    } else {
        return true
    }
}

// --------- using guard

// change if -> guard, less < for greater >, move 'else' to first line
func numberLargerThanFive(number: Int) -> Bool{
    guard number > 5 else {return false}// guard number is NOT less than 5. return false
    // guard number is less than 5. jump to return true
        return true
    }
numberLargerThanFive(number: 4) // false
numberLargerThanFive(number: 6)  // true


// ----------- optional chaining

struct Device{
    var type: String
    var price: Float
    var color: String
}

var myPhone: Device?

let devicePrice = myPhone?.price

if let price = devicePrice{
    print(price)
}
