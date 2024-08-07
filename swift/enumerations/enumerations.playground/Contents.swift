import UIKit
import Foundation

// Enumerations or "enums" allow developers to create their own kind of value in Swift.

//One example could be the directions on a compass. Like this:

// Declare enumerations with the 'enum' keyword and place their definition within a pair of brace

enum Compass {
    case north
    case east
    case south
    case west
}


// ------------------- RAW VALUES

enum Meal:Int {
    case breakfast
    case brunch
    case lunch
    case dinner
}


let lunch = Meal(rawValue: 3) // giving lunch the 'raw value' Int = 3

// ------------------- ASSOCIATED VALUES

enum Exercise {
    case walking
    case running
    case rowing
    case swimming
}

//Enum associated values let us add additional details:

enum Exercise2 {
    case walking(minutes: Int )
    case running(destination: String)
    case rowing
    case swimming(miles: Int)
}

//Now we can be precise – we can say that someone is running to a place

let running = Exercise2.running(destination: "Grocery Store")
let walking = Exercise2.walking(minutes: 60)

print(Exercise2.running(destination: "Park"))

