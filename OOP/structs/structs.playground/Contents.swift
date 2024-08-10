import UIKit
import Foundation

// ==== STRUCTS

//Learning Objectives:

//Differentiate between Structs and Classes
//Identify benefits of using Structs over classes
//Identify key differences between Structs and Classes


// CLASSES = create types
// STRUCTS = create collections of values


//struct Rectangle{
//    var width = 10
//    var length = 20
//}
//
//var myRectangle = Rectangle()
//print(myRectangle.length)


// ==== STRUCT METHODS

struct Rectangle{
    var width = 10
    var length = 20
    func printDesc(){
        print("I have a width of \(width) and a length of \(length)")
    }
    mutating func doubleWidth(){ // Why do we need the mutating keyword here?
        width *= 2
        //if it changes the value of one of its properties, we use keyword "mutating"
    }
}


// STRUCT INITIALIZATION

struct Rectangle1{
    var width = 200
    var heigth = 400
}

let rectangle = Rectangle1()

//We are given a free "empty" initializer for our Types if we give all of our stored properties default values and do not define our own custom initializer.

struct Rectangle2 {
    var width: Int //If we don't give default vals to vars, we have to use type annotation.
    var heigth: Int
}


let rectangle2 = Rectangle2(width: 200, heigth: 400)


// ==== CUSTOM INIT METHOD

struct theRectangle {
    var width : Int
    var heigth : Int
    var size: String
    init(width: Int, heigth: Int) {
        self.width = width
        self.heigth = heigth
        if self.width + self.heigth <= 10{
            size = "Small"
        } else {
            size = "Big"
        }
    }
}

let myRectangle = theRectangle(width: 5, heigth:6 )
print(myRectangle.size)



// --- myPractice with Struct, custome init method


struct testGrades{
    var test1 : Int
    var test2 : Int
    var total : String
    init(test1: Int, test2: Int) {
        self.test1 = test1
        self.test2 = test2
        if self.test1 + self.test2 <= 100{
            total = "Failed"
        } else {
            total = "Passed"
        }
        print(total)
    }
}

let myGrades = testGrades(test1: 0, test2: 100)












// Explanation Practice

// classes = reference
// structs = value types





// AFFECTING THE ORIGINAL COPY

class Macbook{
    var year: Int
    var color: String
    init(year: Int, color: String) {
        self.year = year
        self.color = color
    }
}

let myMacBook = Macbook(year: 2020, color: "Silver")

let stolenMacBook = myMacBook

stolenMacBook.color = "blue"

print(stolenMacBook.color) // color was updated from Silver to blue

// CLASSES:
// WITH THIS CLASS WE ARE AFFECTING THE "ORIGINAL COPY"
// THAT'S WHY THE PROPERTY WAS UPDATED




// MAKING A COPY(DUPLICATE)
struct iPhone {
    var number:Int
    var color: String
}

let myiPhone = iPhone(number: 14, color: "Green")
var stoleniPhone = myiPhone
stoleniPhone.color = "Red"

print(myiPhone.color) // Color was not updated, stayed the same


// STRUCT:
// WITH THIS STRUCT WE MADE A COPY(DUPLICATE)
// STRUCT USES VALUE TYPES
// THAT'S WHY THE PROPERTY WAS NOT UPDATED
