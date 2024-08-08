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



// Example of how we use enumerations

//--------- Not readible

let ArrayDaysOfWeek = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

let humpDayA = ArrayDaysOfWeek[3] // assigning constant humpDayA to "Wednesday"

// -------- READIBLE

enum DaysOfWeek: String{
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

let humpDay = DaysOfWeek.wednesday // assigning constant humpDayA to "Wednesday"


print(humpDay.rawValue.capitalized) // capitalizing the raw value of "Wednesday"


func whatToDo(day:DaysOfWeek) -> String{
    switch day {
        
    case .sunday:
        return "Go to church"
    case .monday:
        return "Go to work"
    case .tuesday:
        return "Eat pizza at work"
    case .wednesday:
        return "Get some drinks after work"
    case .thursday:
        return "Get milshakes after work"
    case .friday:
        return "We get paid today"
    case .saturday:
        return "Have a beer"
    }
}

print(whatToDo(day: .friday))




enum Activity {
    case sleep
    case game(name: String)
    case run(distance: Int)
    case eat
}

struct Activities{
    var morning: Activity
    var afternoon: Activity
    var evening: Activity
}


let jamesActivity = Activities(morning: .run(distance: 3), afternoon: .eat, evening: .game(name: "Super Mario 3D World"))
